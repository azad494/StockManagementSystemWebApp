using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagementSystemWebApp.UI
{
    public partial class UserLoginUI : System.Web.UI.Page
    {
        private SqlConnection Connection;
        private SqlCommand Command;
        private SqlDataReader Reader;

        public UserLoginUI()
        {
            string conString = WebConfigurationManager.ConnectionStrings["StockManagementDB"].ConnectionString;
            Connection=new SqlConnection(conString);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void loginButton_Click1(object sender, EventArgs e)
        {
            string query = "SELECT * FROM Adminstrator WHERE Username='" + userNameTextBox.Text + "'";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            bool isExist = Reader.HasRows;
            Connection.Close();
            if (isExist)
            {
                Connection.Open();
                string passQuery = "SELECT Password FROM Adminstrator WHERE Username='" + userNameTextBox.Text + "'";
                SqlCommand passCommand = new SqlCommand(passQuery, Connection);
                string password = passCommand.ExecuteScalar().ToString();
                if (password == passwordTextBox.Text)
                {
                    Response.Redirect("MainUI.aspx");
                }
                else
                {
                    outputLabel.Text = "Password Incorrect";
                }
                Connection.Close();
            }
            else
            {
                outputLabel.Text = "Username Incorrect";
            }
        }
    }
}