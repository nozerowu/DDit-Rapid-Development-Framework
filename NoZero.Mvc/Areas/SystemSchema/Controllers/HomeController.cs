﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Controllers;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class HomeController : BaseController
    {

        public ActionResult Index()
        {
            var uu = this.UserInfo;
            return System.Web.UI.WebControls.View(this.UserInfo);
        }

        [ChildActionOnly]
        public ActionResult MenuItem()
        {

            #region 得到角色菜单

            var rolelist = UserRepository.GetbyID(UserInfo.UserID).RoleList;

            var menuList = new List<Menu>();

            foreach (var role in rolelist)
            {
                foreach (var menu in role.MenuList)
                {
                    menuList.Add(menu);
                }
            }

            var newMenu = menuList.DistinctBy(a => a.MenuID);

            #endregion

            return PartialView(newMenu);
        }


        [ChildActionOnly]
        public ActionResult Main()
        {

            return PartialView();
        }


        public ActionResult ControllerError(BaseEntity baseEntity = null)
        {
            var rolelist = UserRepository.GetbyID(UserInfo.UserID).RoleList;
            var cc = baseEntity.draw;
            return View();
        }

    }
}