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
            _db.SetMappingTables(SugarConfigs.MpList);
        }
        public void Dispose()
        {
            if (_db != null)
            {
                _db.Dispose();
            }
        }
    }

    public class SugarConfigs
    {
        //key类名 value表名
        public static List<KeyValue> MpList = new List<KeyValue>(){
            new KeyValue(){ Key="Account", Value="Test.Account"},
            new KeyValue(){ Key="Button", Value="Base.Button"},
            new KeyValue(){ Key="Dictionary", Value="Base.Dictionary"},
            new KeyValue(){ Key="DictionaryCategory", Value="Base.DictionaryCategory"},
            new KeyValue(){ Key="LoginLog", Value="Base.LoginLog"},
            new KeyValue(){ Key="Menu", Value="Base.Menu"},
            new KeyValue(){ Key="Menu_Button", Value="Base.Menu_Button"},
            new KeyValue(){ Key="Role", Value="Base.Role"},
            new KeyValue(){ Key="Role_Button", Value="Base.Role_Button"},
            new KeyValue(){ Key="Role_Menu", Value="Base.Role_Menu"},
            new KeyValue(){ Key="test", Value="Test.test"},
            new KeyValue(){ Key="User", Value="Base.User"},
            new KeyValue(){ Key="SystemInfo", Value="Base.SystemInfo"},
            new KeyValue(){ Key="User_Role", Value="Base.User_Role"}
            };
    }
}