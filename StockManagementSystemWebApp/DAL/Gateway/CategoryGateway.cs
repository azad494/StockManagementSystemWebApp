using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CategoryGateway:BaseGateway
    {
        public int Save(Category category)
        {
            string query = "INSERT INTO Category VALUES('"+category.Name+"')";
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public bool IsCategoryExists(string name)
        {
            string query = "SELECT*FROM Category WHERE Name='"+name+"'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

        public List<Category> GetAllCategories()
        {
            string query = "SELECT * FROM Category";
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Category> categoryList=new List<Category>();
            while (Reader.Read())
            {
                Category category=new Category();
                category.Id = Convert.ToInt32(Reader["Id"]);
                category.Name = Reader["Name"].ToString();
                categoryList.Add(category);
            }
            Connection.Close();
            return categoryList;
        }

        public Category GetCategoryById(int id)
        {
            string query = "SELECT * FROM Category WHERE Id="+id;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            Category category = null;
            if (Reader.HasRows)
            {
                category = new Category();
                category.Id = Convert.ToInt32(Reader["Id"]);
                category.Name = Reader["Name"].ToString();
            }

            Connection.Close();
            return category;
        }

        public int UpdateById(Category category)
        {
            string query = "UPDATE Category SET Name='"+category.Name+"' WHERE Id="+category.Id;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
    }
}