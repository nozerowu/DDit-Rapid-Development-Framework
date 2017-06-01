using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(DbService s) : base(s) { }
        public ActionResult Index()
        {
            return View(UserInfo);
        }

        [ChildActionOnly]
        public ActionResult MenuItem()
        {
            var newMenu = GetMenuByUserID(UserInfo.User_ID);
            return PartialView(newMenu);
        }


        [ChildActionOnly]
        public ActionResult Main()
        {
            return PartialView();
        }


      //  public ActionResult ControllerError(BaseEntity baseEntity = null)
        public ActionResult ControllerError()
        {
           // var rolelist = UserRepository.GetbyID(UserInfo.UserID).RoleList;
         //   var cc = baseEntity.draw;
            return View();
        }

    }
}