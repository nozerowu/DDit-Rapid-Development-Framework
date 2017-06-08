using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NoZero.Mvc.ViewModels
{
    public class JqDataTable
    {
        public int start { get; set; }
 

        public int length { get; set; }

        public string draw { get; set; }

        public List<Orderby> order { get; set; }
 
        public List<Datacolumn> columns { get; set; }

        //public string GetOrderByColumnName()
        //{
        //    int a = Convert.ToInt16(order[0].column);
        //    return columns[a].name;
        //}
    }


    public class Orderby
    {
        public string column { get; set; }

        public string dir { get; set; }
    }


    public class Datacolumn
    {
        public string data { get; set; }

        public string name { get; set; }

        public bool searchable { get; set; }

        public bool orderable { get; set; }
    }
}