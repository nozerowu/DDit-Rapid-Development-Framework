using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;
using SqlSugar;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class DictionaryController : BaseController
    {
        // GET: SystemSchema/Dictionary
        public DictionaryController(DbService s) : base(s) { }
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GetDicValueList(Dictionary model)
        {
            var result = db.Queryable<Models.Dictionary>("Base.Dictionary").ToList();
            var temp= new Tuple<int, List<Dictionary>>(result.Count, result);
            return this.JsonResult(temp);
        }

        private ActionResult JsonResult(List<Dictionary> result)
        {
            throw new NotImplementedException();
        }


        public ActionResult GetGetDicategoryList()
        {
            var result = db.Queryable<DictionaryCategory>("Base.DictionaryCategory").ToList();
            return Json(result.Select(m => new
            {
                title = m.Category,
                folder = true,
                dicid = m.ID
            }), JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult OperationDicategory(DictionaryCategory model)
        {

            if (model.ID == 0)
            {
                model.Create_Time = DateTime.Now;
                model.Enabled = true;
                db.Insert(model);
            }
            else
            {
                model.Update_Time = DateTime.Now;
                db.Update(model);
            }
            return Json(new ResultEntity { result = true });
        }

        [HttpPost]
        public ActionResult OperationDicValue(Dictionary model)
        {
            model.Enabled = Request.Form["Enabled"] != null ? true : false;

            if (model.ID == 0)
            {
                model.Create_Time = DateTime.Now;
                db.Insert(model);
            }
            else
            {
                model.Update_Time = DateTime.Now;
                db.Update(model);
            }
            return Json(new ResultEntity { result = true });

        }
    }
}