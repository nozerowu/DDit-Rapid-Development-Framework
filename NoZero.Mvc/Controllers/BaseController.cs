using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using NoZero.Mvc.Models;
using SqlSugar;

namespace NoZero.Mvc.Controllers
{
    public class BaseController : Controller
    {
        // GET: Base
        public SqlSugarClient db;

        public BaseController(DbService s)
        {
            db = s._db;   
        }

        public List<Menu> GetMenuByUserID(int userId)
        {
            var tempUser = db.Queryable<User>("Base.User").FirstOrDefault(it => it.User_ID == userId);
            var rolelist = db.Queryable<User_Role>("Base.User_Role").Where(it => it.Role_ID == tempUser.User_ID).Select(it => it.Role_ID).ToList();
            var menuIdList = db.Queryable<Role_Menu>("Base.Role_Menu").In(it => it.Role_ID, rolelist).Select("distinct Menu_ID").Select(it=>it.Menu_ID).ToList();
            var newMenu = db.Queryable<Menu>("Base.Menu").In(it => it.Menu_ID, menuIdList).ToList();
            return newMenu;
        }

        public  Tuple<bool, string> LoginIn(User model, string IP)
        {
            Tuple<bool, string, User> result = LoginJudge(model);
            if (result.Item1)
            {
                DateTime expiration = DateTime.Now.Add(FormsAuthentication.Timeout);
                var userData = JsonConvert.SerializeObject(result.Item3);
                FormsAuthenticationTicket ticker = new FormsAuthenticationTicket(1, model.User_Name, DateTime.Now, DateTime.Now.AddDays(1), true, userData, FormsAuthentication.FormsCookiePath);
                string encryptedTicket = FormsAuthentication.Encrypt(ticker);
                var cookies = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                cookies.Expires = expiration;
                Response.Cookies.Add(cookies);
            //  Loginlog.AddLoginlog(new LoginLog() { LoginIP = IP, LoginName = result.Item3.UserName, LoginNicker = result.Item3.UserReallyname, LoginTime = DateTime.Now });
            }
            return new Tuple<bool, string>(result.Item1, result.Item2);
        }

        public Tuple<bool, string, User> LoginJudge(User model)
        {
            var message = string.Empty;
            var falg = true;
            try
            {
                var user = db.Queryable<User>("Base.User").SingleOrDefault(it => it.User_Name == model.User_Name);
                if (user == null)
                {
                    message = "指定账号的用户不存在。";
                    falg = false;
                }
                else if (user.User_Password != model.User_Password)
                {
                    message = "登录密码不正确。";
                    falg = false;
                }
                else if (!user.IsEnable)
                {
                    message = "您的账号已被禁用无法登陆。";
                    falg = false;
                }
                return new Tuple<bool, string, User>(falg, message, user);
            }
            catch (Exception ex)
            {
                message = "数据库连接异常，请与管理员联系";
                falg = false;
                return new Tuple<bool, string, User>(falg, message, new User());
            }
        }

        public void Logon()
        {
            FormsAuthentication.SignOut();
        }

        public User UserInfo
        {
            get
            {

                var cc = User.Identity.IsAuthenticated;

                var userName = User.Identity.Name;

                //if (CacheHelp.GetCache(userName) != null)
                //    return CacheHelp.GetCache(userName) as User;

                HttpCookie cookie = HttpContext.Request.Cookies[FormsAuthentication.FormsCookieName];

                if (cookie == null || string.IsNullOrEmpty(cookie.Value))
                    return null;

                User userData = null;
                // 2. 解密Cookie值，获取FormsAuthenticationTicket对象
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(cookie.Value);

                if (ticket != null && string.IsNullOrEmpty(ticket.UserData) == false)
                    userData = JsonConvert.DeserializeObject<User>(ticket.UserData);

               // CacheHelp.SetCache(userName, userData, DateTime.Now.AddHours(2));

                return userData;

            }
        }

        public string GetClientIp()
        {
            //可以透过代理服务器
            string userIP = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            //判断是否有代理服务器
            if (string.IsNullOrEmpty(userIP))
            {
                //没有代理服务器,如果有代理服务器获取的是代理服务器的IP
                userIP = System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            return userIP;
        }

        public ContentResult JsonResult<T>(Tuple<int, List<T>> data) where T : class
        {

            var jsonresult = SerializeObject(new ResultEntity { recordsFiltered = data.Item1, recordsTotal = data.Item1, dataList = data.Item2 });

            return Content(jsonresult);
        }

        public static string SerializeObject(object obj)
        {
            IsoDateTimeConverter dtConverter = new IsoDateTimeConverter { DateTimeFormat = "yyyy-MM-dd HH:mm" };
            return JsonConvert.SerializeObject(obj, Formatting.Indented, new JsonSerializerSettings
            {
                //设置转换时间类型
                Converters = new List<Newtonsoft.Json.JsonConverter> { dtConverter },
                //忽略深度循环
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
            });
        }
    }
}