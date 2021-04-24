using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class CompanyGateway:BaseGateway
    {
        public int Save(Company company)
        {
            string query = "INSERT INTO Company VALUES('" + company.Name + "')";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            int rowAffect = Command.ExecuteNonQuery();
            Connection.Close();
            return rowAffect;
        }

        public bool IsCompanyExists(string name)
        {
            string query = "SELECT*FROM Company WHERE Name='" + name + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExists = Reader.HasRows;
            Connection.Close();
            return isExists;
        }

        public List<Company> GetAllCompanies()
        {
            string query = "SELECT*FROM Company";
            Command=new SqlCommand(query,Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Company> companyList= new List<Company>();
            while (Reader.Read())
            {
                Company company= new Company();
                company.Id = Convert.ToInt32(Reader["Id"]);
                company.Name = Reader["Name"].ToString();
                companyList.Add(company);
            }
            Connection.Close();
            return companyList;
        } 
    }
}