using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.BLL
{
    public class StockOutManager
    {
        private DateTime currentDate=DateTime.Now.Date;
        StockOutGateway stockOutGateway=new StockOutGateway();

        public string Save(List<Cart> carts, string type)
        {
            int rowAffect=0;
            foreach (Cart cart in carts)
            {
                StockOut stockOut= new StockOut();
                stockOut.ItemId = cart.ItemID;
                stockOut.CompanyId = cart.CompanyID;
                stockOut.Date = currentDate.ToString("yyyy-MM-dd");
                stockOut.Type = type;
                stockOut.Quantity = cart.Quantity;
                rowAffect = stockOutGateway.Save(stockOut);
            }
            if (rowAffect > 0)
            {
                return "Save successfull";
            }
            else
            {
                return "Save failed";
            }
        }
    }
}