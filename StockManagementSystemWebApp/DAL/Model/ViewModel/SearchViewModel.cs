using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemWebApp.DAL.Model.ViewModel
{
    public class SearchViewModel
    {
        public string Item { get; set; }
        public int CompanyId { get; set; }
        public string Company { get; set; }
        public int CategoryId { get; set; }
        public int AvailableQuantity { get; set; }
        public int ReorderLevel { get; set; }
    }
}