using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using Microsoft.SqlServer.Server;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class StockOutGateway:BaseGateway
    {
        public int Save(StockOut stockOut)
        {
            int quantity = ChkQuantity(stockOut.ItemId, stockOut.Type, stockOut.Date);
            string query ;
            if (quantity > 0)
            {
                quantity = quantity + stockOut.Quantity;
                query = "UPDATE StockOut SET Quantity="+quantity+" WHERE ItemId="+stockOut.ItemId+" AND Type='"+stockOut.Type+"'";
            }
            else
            {
                quantity = stockOut.Quantity;
                query = "INSERT INTO StockOut VALUES("+stockOut.ItemId+","+stockOut.CompanyId+",'"+stockOut.Type+"','"+stockOut.Date+"',"+stockOut.Quantity+")";
            }
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public int ChkQuantity(int itemId, string type, string date)
        {
            string query = "SELECT * FROM StockOut WHERE ItemId=" + itemId + " AND Type='" + type + "' AND Date='" + date + "'";
            Command=new SqlCommand(query,Connection);
            int quantity = 0;
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            if (Reader.HasRows)
            {
                quantity = Convert.ToInt32(Reader["Quantity"]);
            }
            Connection.Close();
            return quantity;
        }
    }
}