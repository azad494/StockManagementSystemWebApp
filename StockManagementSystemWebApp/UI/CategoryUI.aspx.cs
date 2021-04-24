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
    public partial class CatagoryUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            catagoryListGridView.DataSource = categoryManager.GetAllCategories();
            catagoryListGridView.DataBind();
        }
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Category category = new Category();
            category.Name = nameTextBox.Text;

            outputLabel.Text = categoryManager.Save(category);
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
        protected void updateLinkButton_OnClick(object sender, EventArgs e)
        {
            LinkButton updateLinkButton = (LinkButton)sender;
            DataControlFieldCell cell=(DataControlFieldCell)updateLinkButton.Parent;
            GridViewRow row=(GridViewRow)cell.Parent;
            HiddenField idHiddenField=(HiddenField)row.FindControl("idHiddenField");
            int id = Convert.ToInt32(idHiddenField.Value);
            Response.Redirect("CategoryUpdateUI.aspx?Id="+id);
            
        }

        protected void itemSetupLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemUI.aspx");
        }

        protected void stockInLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockInUI.aspx");
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