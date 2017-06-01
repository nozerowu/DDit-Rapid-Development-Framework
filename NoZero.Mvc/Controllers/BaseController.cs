using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Newtonsoft.Json;
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

            if (db == null)
            {
                db = new DbService()._db;
            }

            var tempUser = db.Queryable<User>().FirstOrDefault(it => it.User_ID == userId);
            var rolelist = db.Queryable<User_Role>().Where(it => it.Role_ID == tempUser.User_ID).Select(it => it.Role_ID);
            var menuIdList = db.Queryable<Role_Menu>().In(it => it.Role_ID, rolelist).Select("distinct Menu_ID");
            var newMenu = db.Queryable<Menu>().In(it => it.Menu_ID, menuIdList).ToList();
            return newMenu;
        }

        public  Tuple<bool, string> Login(User model, string IP)
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
                var user = db.Queryable<User>().SingleOrDefault(it => it.User_Name == model.User_Name);
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
    }
}