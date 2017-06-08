using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Controllers;
using NoZero.Mvc.Models;
using NoZero.Mvc.ViewModels;
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
        public ActionResult GetUserList(UserInput usermodel)
        {    
            var temp = db.Queryable<User>();
            if (!string.IsNullOrEmpty(usermodel.User_Name))
            {
                temp = temp.Where(it => it.User_Name == usermodel.User_Name);
            }
            if (!string.IsNullOrEmpty(usermodel.User_Reallyname))
            {
                temp = temp.Where(it => it.User_Reallyname==usermodel.User_Reallyname);
            }
            if (usermodel.Department_ID!=0)
            {
                temp = temp.Where(it => it.Department_ID==usermodel.Department_ID);
            }
            int count = temp.ToList().Count();

            string[] arr =
            {
                "User_ID ", "User_Name ", "User_Reallyname ", "Department_ID ", "IsEnable ",
                "Create_Time "
            };
            string orderString = arr[Convert.ToInt16(usermodel.order[0].column)] + usermodel.order[0].dir;
            var userList =temp
                    .OrderBy(orderString)
                    .Skip(usermodel.start)
                    .Take(usermodel.length)
                    .ToList();
            int code = Convert.ToInt16(usermodel.draw);

            return JsonResultForDataTable(userList, count, code);
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