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
    public class ButtonController : BaseController
    {
        public ButtonController(DbService s) : base(s) { }
        // GET: SystemSchema/Button

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GetButtonList(Button model)
        {
            var btList = db.Queryable<Button>("Base.Button").ToList();
            var result = new Tuple<int, List<Button>>(btList.Count, btList);
            return this.JsonResult(result);
        }

        private ActionResult JsonResult(List<Button> result)
        {
            throw new NotImplementedException();
        }

        [HttpPost]
        public ActionResult GetButtonItem()
        {
            var btnModel = db.Queryable<Button>("Base.Button").ToList();
            return Content(SerializeObject(btnModel));
        }

        [HttpPost]
        public ActionResult CurrentRoleBtnAuthority(int RoleID)
        {
            var result = db.Queryable<Role_Button>("Base.Role_Button").Where(it => it.Role_ID == RoleID).ToList();
            return Json(result);
        }

        [HttpPost]
        public ActionResult AddorEditButtonInfo(Button model)
        {
            if (model.Button_ID == 0)
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

        [HttpPost]
        public ActionResult MenuMappingButton(int MenuID, List<Menu_Button> mplist)
        {
            db.Delete<Menu_Button>(it => it.Menu_ID == MenuID);
            db.SqlBulkCopy(mplist);
            return Json(new ResultEntity { result = true });
        }

        public ActionResult RemoveButton(int btnID)
        {
            if (!db.Queryable<Menu_Button>("Base.Menu_Button").Any(it => it.Button_ID == btnID))
            {
                db.Delete<Button, int>(btnID);
                return Json(new ResultEntity { result = true });
            }
            return Json(new ResultEntity { result = false, message = "该按钮已经绑定菜单，无法删除！" });
        }

        [ChildActionOnly]
        public ActionResult CreateButtonByMenu(int menuId, string mark)
        {
            var rolelist = db.Queryable<User_Role>("Base.User_Role").Where(it => it.User_ID == UserInfo.User_ID).Select(it => it.Role_ID).ToList();
            var buttonList = new List<Button>();
            var mb = db.Queryable<Menu_Button>("Base.Menu_Button").Where(it => it.Menu_ID == menuId).OrderBy(it => it.OrderBy).ToList();
            foreach (var role in rolelist)
            {
                mb.ForEach(m =>
                {
                    var hasmb = db.Queryable<Role_Button>("Base.Role_Button").In(it => it.Role_ID, rolelist).Where(it => it.Menu_ID == m.Menu_ID).Where(it => it.Button_ID == m.Button_ID).ToList();
                    if (hasmb != null)
                    {
                        var bt = db.Queryable<Button>("Base.Button").Single(it => it.Button_ID == m.Button_ID);
                        if (!buttonList.Contains(bt))
                        {
                            buttonList.Add(bt);
                        }
                    }
                });
            }

            ViewBag.mark = mark;
            buttonList = new List<Button>();
            mb.ForEach(m =>
            {
                var btn = buttonList.FirstOrDefault(a => a.Button_ID == m.Button_ID);
                if (btn != null)
                {
                    buttonList.Add(btn);
                }
            });

            return PartialView(buttonList);
        }
    }
}