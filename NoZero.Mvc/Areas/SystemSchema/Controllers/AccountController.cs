﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;
using NoZero.Mvc.Service;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class AccountController : BaseController
    {
        public AccountController(DbService s) : base(s) { }
        // GET: SystemSchema/Account
        public ILoginService logService { get; set; }

        public ActionResult Login()
        {
            string returnUrl = Request.Params["returnUrl"];
            returnUrl = returnUrl ?? Url.Action("Index", "Home");
            ViewBag.TaskUrl = returnUrl;
            return View();
        }

        [HttpPost]
        public ActionResult Login(User model)
        {

            //var IP = base.GetClientIp();

          //  Tuple<bool, string> result = logService.Login(model, IP);

           // return Json(new ResultEntity { result = result.Item1, message = result.Item2 });
            return Json(new object {});
        }

        public ActionResult Logout()
        {

            var logurl = FormsAuthentication.LoginUrl;
            if (User.Identity.IsAuthenticated)
            {
                logService.Logon();
               // CacheHelp.RemoveKeyCache(User.Identity.Name);
            }
            return Redirect(logurl);
        }
    }
}