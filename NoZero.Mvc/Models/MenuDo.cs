using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoZero.Mvc.Models
{
    public class MenuDo
    {
        public int MenuID { get; set; }

        public string MenuName { get; set; }

        public string MenuUrl { get; set; }

        public int? MenuParentID { get; set; }

        public string MenuParentName { get; set; }

        public int MenuOrder { get; set; }

        public string MenuIcon { get; set; }

        public DateTime CreateTime { get; set; }

        public ICollection<MenuMappingButton> mbList { get; set; }

        public List<MenuDo> Childs { get; set; }

    }
}