﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoZero.Mvc.Models
{
    public class MenuMappingButton
    {
        public int ID { get; set; }

        public int MenuID { get; set; }

        public int ButtonID { get; set; }

        public int OrderBy { get; set; }

        public Menu MenuModel { get; set; }

        public Button ButtonModel { get; set; }

    }
}