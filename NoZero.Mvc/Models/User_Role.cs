using System;
using System.Linq;
using System.Text;
using SqlSugar;

namespace NoZero.Mvc.Models
{
    [SugarMapping(TableName = "Base.User_Role")]
    public class User_Role
    {
        
        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int ID {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int User_ID {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int Role_ID {get;set;}

    }
}
