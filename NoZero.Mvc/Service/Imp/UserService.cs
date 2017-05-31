using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NoZero.Mvc.Service;
using NoZero.Mvc.Models;
using SqlSugar;


namespace DDitApplicationFrame.Service.Imp
{
    public class UserService:IUserService
    {
        private SqlSugarClient db;
        //public IUserRepository userRepository { get; set; }

        /// <summary>
        /// 得到用户角色的菜单列表
        /// </summary>
        /// <param name="UserID"></param>
        /// <returns></returns>
        public List<Menu> GetMenuByUserID(int UserID) {

            if (db == null)
            {
                db = new DbService()._db;
            }

            var tempUser=db.Queryable<User>().FirstOrDefault(it => it.User_ID == UserID);
            var rolelist = db.Queryable<User_Role>().Where(it => it.Role_ID == tempUser.User_ID).Select(it=>it.Role_ID);
            var menuIdList = db.Queryable<Role_Menu>().In(it => it.Role_ID, rolelist).Select(it=>it.Menu_ID);
            var newMenu = db.Queryable<Menu>().In(it => it.Menu_ID, menuIdList).ToList();

            return newMenu;
        }

    }
}