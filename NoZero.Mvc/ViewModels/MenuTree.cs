using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using NoZero.Mvc.Models;

namespace NoZero.Mvc.ViewModels
{
    public class MenuTree
    {
        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public int Menu_ID { get; set; }

        /// <summary>
        /// Desc:- 
        /// Default:- 
        /// Nullable:False 
        /// </summary>
        public string Menu_Name { get; set; }

        public List<MenuTree> Childs { get; set; }

    }


}