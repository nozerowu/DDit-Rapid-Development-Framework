using System;
using System.Linq;
using System.Text;
using SqlSugar;

namespace NoZero.Mvc.Models
{
     [SugarMapping(TableName = "Base.Role_Button")]
    public class Role_Button
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
        /// Nullable:True 
        /// </summary>
        public int? Role_ID {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:True 
        /// </summary>
        public int? Menu_ID {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:True 
        /// </summary>
        public int? Button_ID {get;set;}

    }
}
