using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.DAL.Model.ViewModel
{
    public class SalesViewModel
    {
        public string Company { get; set; }
        public string Item { get; set; }
        public int Quantity { get; set; }
    }
}