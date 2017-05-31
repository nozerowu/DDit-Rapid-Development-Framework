using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SqlSugar;

namespace NoZero.Mvc.Models
{
    public class DbService : IDisposable
    {
        private static string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["Default"].ToString();

        public SqlSugarClient _db;
        public DbService()
        {
            _db = new SqlSugarClient(_connection);//获SqlSugarClient对象
        }
        public void Dispose()
        {
            if (_db != null)
            {
                _db.Dispose();
            }
        }
    }
}