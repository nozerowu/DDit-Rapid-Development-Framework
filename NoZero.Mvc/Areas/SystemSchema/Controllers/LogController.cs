using System;
using System.Collections.Generic;
using System.Dynamic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;
using SqlSugar;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class LogController : BaseController
    {
        public LogController(DbService s) : base(s) { }
        // GET: SystemSchema/Log

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GetLogList(LoginLog logmodel)
        {
            var result = db.Queryable<LoginLog>().Where(it => it.Login_ID == logmodel.Login_ID).ToList();
            var temp = new Tuple<int, List<LoginLog>>(result.Count, result);
            return JsonResult<LoginLog>(temp);
        }

        [HttpPost]
        public ActionResult GetErrorList(LoginLog logmodel,int pageIndex,int pageSize=10)
        {
            var basePath = System.Web.HttpContext.Current.Server.MapPath("~/log");

            var strArray = Directory.GetFiles(basePath);

            var result = new List<dynamic>();

            foreach (var item in strArray)
            {
                dynamic dyfileinfo = new ExpandoObject();
                var file = new DirectoryInfo(item);
                dyfileinfo.filePath = file.FullName;
                dyfileinfo.fileName = file.Name;
                result.Add(dyfileinfo);
            }

            result = result.OrderByDescending(a => a.fileName).ToList();
            result = result.Skip(pageIndex).Take(pageSize).ToList();

            var strjson = SerializeObject(new ResultEntity { recordsFiltered = strArray.Count(), recordsTotal = strArray.Count(), dataList = result });

            return Content(strjson);
        }

        public ActionResult ReadyFile(string filePath)
        {

            String Contents = "";

            var file = Path.Combine(Server.MapPath("~/log"), filePath + ".txt");

            if (!new FileInfo(file).Exists)
                return Json(new ResultEntity() { result = false, message = "没有日志" }, JsonRequestBehavior.AllowGet);

            using (FileStream fs = new FileStream(file, FileMode.Open))
            {
                using (StreamReader sr = new StreamReader(fs, System.Text.Encoding.Default))
                {
                    String line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        Contents += line.ToString() + "\r\n";
                    }
                }
            }
            return Json(new ResultEntity() { result = true, message = Contents }, JsonRequestBehavior.AllowGet); ;
        }
    }
}