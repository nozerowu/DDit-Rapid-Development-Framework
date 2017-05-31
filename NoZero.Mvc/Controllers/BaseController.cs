using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NoZero.Mvc.Models;
using SqlSugar;

namespace NoZero.Mvc.Controllers
{
    public class BaseController : Controller
    {
        // GET: Base
        public SqlSugarClient db;

        public BaseController(DbService s)
        {
            db = s._db;
            //获取cookies
           
        }
    }
}