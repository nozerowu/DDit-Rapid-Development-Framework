using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoZero.Mvc.ViewModels
{
    public class UserDtInput:JqDataTable
    {
        public string User_Name { get; set; }

        public string User_Reallyname { get; set; }

        public int Department_ID { get; set; }
    }
}