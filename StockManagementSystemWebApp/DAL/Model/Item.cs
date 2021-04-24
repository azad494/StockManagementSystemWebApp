using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.DAL.Model
{
    public class Item
    {
        public int Id { get; set; }
        public int CategoryID { get; set; }
        public int CompanyID { get; set; }
        public string Name { get; set; }
        public int ReorderLevel { get; set; }
        public int Quantity { get; set; }
    }
}
