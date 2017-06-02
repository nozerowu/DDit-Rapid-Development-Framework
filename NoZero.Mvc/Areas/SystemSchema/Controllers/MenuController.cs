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
    public class MenuController : BaseController
    {
        public MenuController(DbService s) : base(s) { }
        // GET: SystemSchema/Menu

        public ActionResult Index()
        {
            ViewBag.Button = db.Queryable<Button>().ToList();
            return View();
        }

        public ActionResult ParentMenu()
        {
            var pm = db.Queryable<Menu>().Where(it => it.Menu_ParentID == null).ToList();
            var pmjson = SerializeObject(pm);
            return Content(pmjson);
        }

        [HttpPost]
        public ActionResult GetMenuList(Menu Menumodel)
        {
            List<Menu> temp;
            List<MenuDo> menuDoList = new List<MenuDo> {};
            if (string.IsNullOrEmpty(Menumodel.Menu_Name))
            {
                temp = db.Queryable<Menu>().ToList();
            }
            else
            {
                temp = db.Queryable<Menu>().Where(it => it.Menu_Name == Menumodel.Menu_Name).ToList();
            }

            foreach (var item in temp)
            {
                var templist =
                    db.Queryable<Menu_Button>()
                        .Where(it => it.Menu_ID == item.Menu_ID)
                        .Select<MenuMappingButton>(c => new MenuMappingButton
                        {
                            ButtonID=c.Button_ID,ID=c.ID,MenuID=c.Menu_ID,OrderBy=c.OrderBy
                        }).ToList();
                var tempMenuDo = new MenuDo
                {
                    MenuID=item.Menu_ID,
                    MenuName=item.Menu_Name,
                    MenuUrl=item.Menu_Url,
                    MenuOrder=item.Menu_Order,
                    MenuIcon=item.Menu_Icon,
                    CreateTime=item.Create_Time,
                    mbList=templist
                };
                var tempItem = temp.FirstOrDefault(it => it.Menu_ID == item.Menu_ParentID);
                if (tempItem != null)
                {
                    tempMenuDo.MenuParentName = tempItem.Menu_Name;
                }
                menuDoList.Add(tempMenuDo);
            }

            var jsonresult = SerializeObject(new ResultEntity { recordsFiltered = menuDoList.Count, recordsTotal = menuDoList.Count, dataList = menuDoList});

            return Content(jsonresult);
        }

        [HttpPost]
        public ActionResult AddOrEditMenuInfo([ModelBinder(typeof(CustomModelBind))]Menu Menumodel)
        {
            var menuModel = this.MenuRepository.OrderAssignment(Menumodel);

            if (Menumodel.MenuID == 0)
            {
                this.MenuRepository.AddMenu(menuModel);
            }
            else
            {
                this.MenuRepository.ModifyMenu(menuModel);
            }

            return Json(new ResultEntity() { result = true });
        }

        [HttpPost]
        public ActionResult RemoveMenu(int menuID)
        {
            this.MenuRepository.DeleteMenu(menuID);
            return Json(new ResultEntity() { result = true, message = "信息删除成功！" });
        }
    }
}