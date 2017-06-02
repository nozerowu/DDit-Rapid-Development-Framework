using System;
using System.Linq;
using System.Text;
using SqlSugar;

namespace NoZero.Mvc.Models
{
     [SugarMapping(TableName = "Base.Role_Menu")]
    public class Role_Menu
    {
        
        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int RoleMenu_ID {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int Role_ID {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int Menu_ID {get;set;}

    }
}
