using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Model;
using StockManagementSystemWebApp.DAL.Model.ViewModel;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class ItemGateway : BaseGateway
    {
        public int Save(Item item)
        {
            string query = "INSERT INTO Item VALUES(" + item.CategoryID + "," + item.CompanyID + ",'" + item.Name + "'," + item.ReorderLevel + "," + item.Quantity + ")";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
        public bool IsItemExists(string name, int companyId)
        {
            string query = "SELECT*FROM Item WHERE Name='" + name + "' AND CompanyID=" + companyId;
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
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Category> categoryList = new List<Category>();
            while (Reader.Read())
            {
                Category category = new Category();
                category.Id = Convert.ToInt32(Reader["Id"]);
                category.Name = Reader["Name"].ToString();
                categoryList.Add(category);
            }
            Reader.Close();
            Connection.Close();
            return categoryList;
        }

        public List<Item> GetItemsByCompanyId(int id)
        {
            string query = "SELECT * FROM Item WHERE CompanyID=" + id;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Item> itemList = new List<Item>();
            while (Reader.Read())
            {
                Item item = new Item();
                item.Id = Convert.ToInt32(Reader["Id"]);
                item.CategoryID = Convert.ToInt32(Reader["CategoryID"]);
                item.CompanyID = Convert.ToInt32(Reader["CompanyID"]);
                item.Name = Reader["Name"].ToString();
                item.ReorderLevel = Convert.ToInt32(Reader["ReorderLevel"]);
                item.Quantity = Convert.ToInt32(Reader["Quantity"]);
                itemList.Add(item);
            }
            Connection.Close();
            return itemList;
        }

        public int Update(int itemId, int quantity)
        {
            int itemQuantity = ItemQuantity(itemId);
            int sumQuantity = itemQuantity + quantity;
            string query = "UPDATE Item SET Quantity='"+sumQuantity+"' WHERE Id="+itemId;
            Command= new SqlCommand(query,Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
        public int ItemQuantity(int id)
        {
            string query = "SELECT Quantity from Item WHERE Id="+id;
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            int itemQuantity = Convert.ToInt32(Reader["Quantity"]);
            Connection.Close();
            return itemQuantity;
        }

        public int ItemQuantityDelete(int itemId,int quantity)
        {
            int chkQuantity = ItemQuantity(itemId);
            int subtractQuantity = chkQuantity - quantity;
            string query = "UPDATE Item SET Quantity="+subtractQuantity+" WHERE Id="+itemId;
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }
        public Item GetItemByID(int id)
        {
            string query = "SELECT * FROM Item WHERE Id=" + id;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            Reader.Read();
            Item item = new Item();
            item.Id = Convert.ToInt32(Reader["Id"]);
            item.CategoryID = Convert.ToInt32(Reader["CategoryID"]);
            item.CompanyID = Convert.ToInt32(Reader["CompanyID"]);
            item.Name = Reader["Name"].ToString();
            item.ReorderLevel = Convert.ToInt32(Reader["ReorderLevel"]);
            item.Quantity = Convert.ToInt32(Reader["Quantity"]);

            Connection.Close();
            return item;
        }
        public List<Company> GetAllCompany()
        {
            string query = "SELECT * FROM Company";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Company> companyList = new List<Company>();
            while (Reader.Read())
            {
                Company company = new Company();
                company.Id = Convert.ToInt32(Reader["Id"]);
                company.Name = Reader["Name"].ToString();
                companyList.Add(company);
            }
            Reader.Close();
            Connection.Close();
            return companyList;
        } 
        public List<SearchViewModel> GetSearchViewModels()
        {
            string query = "SELECT Item ,Company,AvailableQuantity,ReorderLabel FROM SearchView";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<SearchViewModel> searchViewModels= new List<SearchViewModel>();
            while (Reader.Read())
            {
                SearchViewModel searchViewModel= new SearchViewModel();
                searchViewModel.Item = Reader["Item"].ToString();
                searchViewModel.Company = Reader["Company"].ToString();
                searchViewModel.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuantity"]);
                searchViewModel.ReorderLevel = Convert.ToInt32(Reader["ReorderLabel"]);
                searchViewModels.Add(searchViewModel);
            }
            Connection.Close();
            return searchViewModels;
        }

        public List<SearchViewModel> GetSearchViewModelsByCompanyId(int companyId)
        {
            string query = "SELECT Item ,Company,AvailableQuantity,ReorderLabel FROM SearchView WHERE CompanyId="+companyId;
            Command= new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<SearchViewModel> searchViewModels= new List<SearchViewModel>();
            while (Reader.Read())
            {
                SearchViewModel searchViewModel = new SearchViewModel();
                searchViewModel.Item = Reader["Item"].ToString();
                searchViewModel.Company = Reader["Company"].ToString();
                searchViewModel.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuantity"]);
                searchViewModel.ReorderLevel = Convert.ToInt32(Reader["ReorderLabel"]);
                searchViewModels.Add(searchViewModel);
            }
            Connection.Close();
            return searchViewModels;       
        }
        public List<SearchViewModel> GetSearchViewModelsByCategoryId(int categoryId)
        {
            string query = "SELECT Item ,Company,AvailableQuantity,ReorderLabel FROM SearchView WHERE CategoryId=" + categoryId;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<SearchViewModel> searchViewModels = new List<SearchViewModel>();
            while (Reader.Read())
            {
                SearchViewModel searchViewModel = new SearchViewModel();
                searchViewModel.Item = Reader["Item"].ToString();
                searchViewModel.Company = Reader["Company"].ToString();
                searchViewModel.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuantity"]);
                searchViewModel.ReorderLevel = Convert.ToInt32(Reader["ReorderLabel"]);
                searchViewModels.Add(searchViewModel);
            }
            Connection.Close();
            return searchViewModels;
        }
        public List<SearchViewModel> GetSearchViewModelsByBothId(int companyId,int categoryId)
        {
            string query = "SELECT Item ,Company,AvailableQuantity,ReorderLabel FROM SearchView WHERE CompanyId="+companyId+" AND CategoryId="+categoryId+"";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<SearchViewModel> searchViewModels = new List<SearchViewModel>();
            while (Reader.Read())
            {
                SearchViewModel searchViewModel = new SearchViewModel();
                searchViewModel.Item = Reader["Item"].ToString();
                searchViewModel.Company = Reader["Company"].ToString();
                searchViewModel.AvailableQuantity = Convert.ToInt32(Reader["AvailableQuantity"]);
                searchViewModel.ReorderLevel = Convert.ToInt32(Reader["ReorderLabel"]);
                searchViewModels.Add(searchViewModel);
            }
            Connection.Close();
            return searchViewModels;
        }

        public List<SalesViewModel> GetSalesBetweenTwoDates(string fromDate, string toDate)
        {
            DateTime fd;
            DateTime td;
            DateTime.TryParse(fromDate, out fd);
            DateTime.TryParse(toDate, out td);
            string query = "SELECT Company,Item,Quantity FROM GetAllSalesView WHERE Type='Sold' AND DATE BETWEEN '"+fd.Date+"' AND '"+td.Date+"'";
            Command= new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<SalesViewModel> salesViewModels= new List<SalesViewModel>();
            while (Reader.Read())
            {
                SalesViewModel salesViewModel= new SalesViewModel();
                salesViewModel.Item = Reader["Item"].ToString();
                salesViewModel.Company = Reader["Company"].ToString();
                salesViewModel.Quantity = Convert.ToInt32(Reader["Quantity"]);
                salesViewModels.Add(salesViewModel);
            }
            Connection.Close();
            return salesViewModels;
        }

        public bool HasRows(string fromDate, string toDate)
        {
            string query = "SELECT Company,Item,Quantity FROM GetAllSalesView WHERE Type='Sold' AND DATE BETWEEN '" +fromDate + "' AND '" + toDate + "'";
            Command= new SqlCommand(query,Connection);  
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }
    }
}