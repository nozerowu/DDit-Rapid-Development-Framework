using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Models;

namespace NoZero.Mvc.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(DbService s) : base(s) { }


        public void AddModel()
        {
            db.ClassGenerating.CreateClassFiles(db, @"D:\coding\Git\github\DDit-Rapid-Development-Framework\NoZero.Mvc\Models", "NoZero.Mvc.Models");
        }
        public ActionResult Index()
        {
            //AddModel();
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}