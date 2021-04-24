using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CartGateway:BaseGateway
    {
        public int Add(Cart cart)
        {
            int quantity = ChkQuantity(cart.ItemID);
            string query;
            if (quantity > 0)
            {
                quantity = quantity + cart.Quantity;
                query = "UPDATE Cart SET Quantity= "+quantity+" WHERE ItemID="+cart.ItemID;
            }
            else
            {
                quantity = cart.Quantity;
                query = "INSERT INTO Cart VALUES("+cart.CompanyID+","+cart.ItemID+",'"+cart.CompanyName+"','"+cart.ItemName+"',"+cart.Quantity+")";
            }
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public int ChkQuantity(int itemID)
        {
            string query = "SELECT * FROM Cart WHERE ItemID="+itemID;
            int quantity = 0;
            Command=new SqlCommand(query,Connection);
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

        public List<Cart> GetAllCarts()
        {
            string query = "SELECT*FROM Cart";
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Cart> cartList= new List<Cart>();
            Cart cart = null;
            while (Reader.Read())
            {
                cart= new Cart();
                cart.CompanyID = Convert.ToInt32(Reader["CompanyID"]);
                cart.CompanyName = Reader["CompanyName"].ToString();
                cart.ItemID = Convert.ToInt32(Reader["ItemID"]);
                cart.ItemName = Reader["ItemName"].ToString();
                cart.Quantity =Convert.ToInt32(Reader["Quantity"]);
                cartList.Add(cart);
            }
            Connection.Close();
            return cartList;
        }

        public int DropCart()
        {
            string query = "DELETE FROM Cart";
            Command= new SqlCommand(query,Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public bool IsCartExist()
        {
            string query = "SELECT*FROM Cart";
            Command= new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            bool isExist = Reader.HasRows;
            Connection.Close();
            return isExist;
        }
    }
}