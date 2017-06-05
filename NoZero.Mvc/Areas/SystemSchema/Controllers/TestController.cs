using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class TestController : BaseController
    {
        public TestController(DbService s) : base(s) { }
        // GET: SystemSchema/Test
        public ActionResult Index()
        {
            var jsonString=JsonConvert.SerializeObject(new {
                 item="frist",
                 type="str"      
            });

           // dynamic json = DynamicJson.Parse(jsonString);

           // var cc=json.item;

            return View();
        }

        [HttpPost]
        public ActionResult Calendar(string start,string end) {

            return Json("");
        }
    }
}