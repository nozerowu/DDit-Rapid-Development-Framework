using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;
using SqlSugar;

namespace NoZero.Mvc.Areas.SystemSchema.Controllers
{
    public class UserController : BaseController
    {
        public UserController(DbService s) : base(s) { }

        public ActionResult Index()
        {
            var roleList = db.Queryable<Role>().ToList();
            var bumen = db.Queryable<DictionaryCategory>().Where(it => it.Category == "部门").FirstOrDefault();
            var bumenlist = db.Queryable<Dictionary>().Where(it => it.DicCategoryID == bumen.ID).ToList();
            ViewBag.bumen = bumenlist;
            ViewBag.jsonbumen = SerializeObject(bumenlist);
            ViewBag.role = roleList;
            return View();
        }

        public ActionResult ValidUserName(User model)
        {
            var userModel = db.Queryable<User>("Base.User").FirstOrDefault(it => it.User_Name == model.User_Name);          
            if (userModel != null)
            {
                return Content(model.User_ID> 0 && model.User_ID== userModel.User_ID ? "true" : "false");
            }
            else
            {
                return Content("true");
            }
        }

        public ActionResult ValidUserPassword(string oldPassword)
        {
            return Content(this.UserInfo.User_Password == oldPassword ? "true" : "false");
        }

        [HttpPost]
        public ActionResult ModifyPassword(string password)
        {
            db.Update<User>(new { User_Password = password }, it => it.User_ID == UserInfo.User_ID);
            return Json(new ResultEntity { result = true });
        }

        [HttpPost]
        public ActionResult GetUserList(User usermodel = null)
        {
            //pageSize = pageSize == 0 ? 10 : pageSize;
            var userList=db.Queryable<User>().OrderBy(it=>it.User_ID).Skip(0).Take(10).ToList();
            var listModel = new Tuple<int, List<User>>(userList.Count, userList);
            return base.JsonResult(listModel);
        }

        private ActionResult JsonResult(object p)
        {
            throw new NotImplementedException();
        }

        [HttpPost]
        public ActionResult AddorEditUserInfo(User userModel, HttpPostedFileBase portrait)
        {
            string fileName = string.Empty;
            if (portrait != null && portrait.ContentLength > 0)
            {
                fileName = DateTime.Now.ToString("yyyyMMdd") + "-" + Path.GetFileName(portrait.FileName).Replace("&", "");
                var sysPath = Server.MapPath("~/heardImg");
                if (!Directory.Exists(sysPath)) Directory.CreateDirectory(sysPath);
                var filePath = Path.Combine(sysPath, fileName);
                portrait.SaveAs(filePath);
            }
            if (userModel.User_ID == 0)
            {
                userModel.IsEnable = true;
                userModel.Create_Time= DateTime.Now;
                userModel.HeadPortrait = fileName;
                db.Insert(userModel);
            }
            else
            {
                var headPortrait = db.Queryable<User>("Base.User").Single(it=>it.User_ID==UserInfo.User_ID).HeadPortrait;
                userModel.HeadPortrait = fileName == "" ? headPortrait : fileName;
                userModel.Update_Time = DateTime.Now;
                //注意检测是否有问题 2017-06-01
                db.Update(userModel);
            }
            return Json(new ResultEntity { result = true });
        }

        [HttpPost]
        public ActionResult DisenableUser(User model)
        {
            db.Delete<User>(it => it.User_ID == model.User_ID);
            return Json(new ResultEntity { result = true });
        }

        [HttpPost]
        public ActionResult DistributionRole(int UserId, List<int> RoleIDlist)
        {
            // 添加用户角色信息,先删除原有数据,在添加到数据库
            db.Delete<User_Role>(it => it.User_ID == UserId);
            List<User_Role> ur = new List<User_Role> {};
            ur.AddRange(RoleIDlist.Select(item => new User_Role
            {
                User_ID = UserId, Role_ID = item
            }));
            db.SqlBulkCopy(ur);
            return Json(new ResultEntity { result = true });
        }

        public FilePathResult GetPortrait(string imgName)
        {
            string filePath = Path.Combine(Server.MapPath("/heardImg"), imgName);
            return File(filePath, "image/jpeg");
        }

    }
}