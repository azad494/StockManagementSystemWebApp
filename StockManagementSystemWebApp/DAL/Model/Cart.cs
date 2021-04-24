using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.DAL.Model
{
    public class Cart
    {
        public int Id { get; set; }
        public int CompanyID { get; set; }
        public int ItemID { get; set; }
        public string CompanyName { get; set; }
        public string ItemName { get; set; }
        public int Quantity { get; set; }
    }
}