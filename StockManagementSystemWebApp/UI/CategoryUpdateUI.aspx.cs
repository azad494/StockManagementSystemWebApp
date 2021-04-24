using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystemWebApp.BLL;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.UI
{
    public partial class CatagoryUpdateUI : System.Web.UI.Page
    {
        CategoryManager catagoryManager =new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {

                int id = Convert.ToInt32(Request.QueryString["Id"]);
                Category catagory = catagoryManager.GetCategoryById(id);
                if (catagory != null)
                {
                    LoadAllFromCatagory(catagory);
                }
            }
            updatedListGridView.DataSource = catagoryManager.GetAllCategories();
            updatedListGridView.DataBind();
        }

        private void LoadAllFromCatagory(Category catagory)
        {
            idHiddenField.Value = catagory.Id.ToString();
            nameTextBox.Text = catagory.Name;
        }
        protected void homeLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainUI.aspx");
        }

        protected void categorySetupLinkButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("CategoryUI.aspx");
        }

        protected void companySetupLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyUI.aspx");
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            Category catagory=new Category();
            catagory.Id = Convert.ToInt32(idHiddenField.Value);
            catagory.Name = nameTextBox.Text;
            outputLabel.Text = catagoryManager.UpdateById(catagory);
            updatedListGridView.DataSource = catagoryManager.GetAllCategories();
            updatedListGridView.DataBind();
        }

        protected void stockInLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockInUI.aspx");
        }

        protected void itemSetupLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemUI.aspx");
        }

        protected void stockOutLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockOutUI.aspx");
        }

        protected void searchViewLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchViewUI.aspx");
        }

        protected void viewSalesLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSalesUI.aspx");
        }
    }
}