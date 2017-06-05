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
    public class RoleController : BaseController
    {
        public RoleController(DbService s) : base(s) { }
        // GET: SystemSchema/Role
        public ActionResult Index()
        {
            //var pm = MenuRepository.GetParentMenu();
            var pm = db.Queryable<Menu>().Where(it => it.Menu_ParentID == null).ToList();
            ViewBag.MenuList = pm;
            return View();
        }

        [HttpPost]
        public ActionResult GetRoleList(Role rolemodel)
        {
            var listmodel = db.Queryable<Role>().Where(it => it.Role_Name == rolemodel.Role_Name).ToList();
            var result = new Tuple<int, List<Role>>(listmodel.Count, listmodel);
            return JsonResult<Role>(result);
        }

        [HttpPost]
        public ActionResult ValidRoleName(Role model)
        {
            //var rolemodel = RoleRepository.Validate(model);
            var rolemodel = db.Queryable<Role>().Any(it => it.Role_Name == model.Role_Name);
            if (rolemodel )
            {
                return Content(model.Role_ID != 0 ? "true" : "false");
            }
            else
            {
                return Content("true");
            }
        }

        [HttpPost]
        public ActionResult AddOrEditRoleInfo(Role rolemodel)
        {

            if (rolemodel.Role_ID == 0)
            {
                rolemodel.Create_Time = DateTime.Now;
                db.Insert(rolemodel);
            }
            else
            {
                rolemodel.Update_Time = DateTime.Now;
                db.Update(rolemodel);
            }

            return Json(new ResultEntity() { result = true });
        }

        [HttpPost]
        public ActionResult RemoveRole(int roleID)
        {
            ResultEntity es = new ResultEntity {};
            var hasUserRole = db.Queryable<User_Role>().Any(it => it.Role_ID == roleID);
            if (hasUserRole)
            {
                es.result = false;
                es.message = "该角色正在被使用，无法删除信息！";
            }
            else
            {
                db.Delete<Role>(it => it.Role_ID == roleID);
                es.result = true;
                es.message = "角色删除成功！";
            }
            return Json(es);
        }

        [HttpPost]
        public ActionResult DistributionMenuAndButton(int RoleID, List<int> menuId, List<RoleMappingButton> modelList)
        {
            db.Delete<Role_Menu>(it => it.Role_ID == RoleID);
            db.Delete<Role_Button>(it => it.Role_ID == RoleID);

            var roleMenuList = new List<Role_Menu> {};
            var roleButtonList = new List<Role_Button> {};

            roleMenuList.AddRange(menuId.Select(item => new Role_Menu
            {
                Role_ID = RoleID, Menu_ID = item
            }));
            db.SqlBulkCopy(roleMenuList);

            roleButtonList.AddRange(modelList.Select(item => new Role_Button
            {
                Role_ID = RoleID, Menu_ID = item.MenuID, Button_ID = item.ButtonID
            }));
            db.SqlBulkCopy(roleButtonList);

            return Json(new ResultEntity() { result = true });
        }
    }
}