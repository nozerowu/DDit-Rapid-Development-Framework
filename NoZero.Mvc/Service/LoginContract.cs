
using System;

using System.Web.Security;
using NoZero.Mvc.Models;
using SqlSugar;

namespace NoZero.Mvc.Service
{
    public abstract class LoginContract : ILoginService
    {
       // public IUserRepository UserRepository { get; set; }
        private SqlSugarClient db;

       

        public Tuple<bool, string, User> LoginJudge(User model)
        {
            var message = string.Empty;
            var falg=true;
            try
            {
                if (db == null)
                {
                    db = new DbService()._db;
                }

                var User = db.Queryable<User>().SingleOrDefault(it => it.User_Name==model.User_Name);

                if (User == null)
                {
                    message = "指定账号的用户不存在。";
                    falg = false;
                }
                else if (User.User_Password!=model.User_Password)
                {
                    message = "登录密码不正确。";
                    falg = false;
                }
                else if (!User.IsEnable)
                {
                    message = "您的账号已被禁用无法登陆。";
                    falg = false;
                }
                return new Tuple<bool, string, User>(falg, message, User);
            }catch(Exception ex){
                message = "数据库连接异常，请与管理员联系";
                falg = false;
                return new Tuple<bool, string, User>(falg, message,new User());
            }
           
        }

        public abstract Tuple<bool, string> Login(User model,string IP);

        public virtual void Logon()
        {
            FormsAuthentication.SignOut();
        }

    }
}