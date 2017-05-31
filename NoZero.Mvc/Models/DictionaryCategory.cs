using System;
using System.Linq;
using System.Text;

namespace NoZero.Mvc.Models
{
    public class DictionaryCategory
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
        public string Category {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:((1)) 
        /// Nullable:False 
        /// </summary>
        public Boolean Enabled {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:(getdate()) 
        /// Nullable:False 
        /// </summary>
        public DateTime Create_Time {get;set;}

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:True 
        /// </summary>
        public DateTime? Update_Time {get;set;}

    }
}
