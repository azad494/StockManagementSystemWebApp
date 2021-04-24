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
    public partial class Demo : System.Web.UI.Page
    {
        ItemManager itemManager=new ItemManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                categoryDropDownList.DataSource = itemManager.GetAllCategories();
                categoryDropDownList.DataValueField = "Id";
                categoryDropDownList.DataTextField = "Name";
                categoryDropDownList.DataBind();
                categoryDropDownList.Items.Insert(0,"Select Category");
                companyDropDownList.DataSource = itemManager.GetAllCompany();
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataBind();
                companyDropDownList.Items.Insert(0,"Select Company");
            }

        }

        protected void homeLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainUI.aspx");
        }

        protected void catagorySetupLinkButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("CategoryUI.aspx");
        }

        protected void companySetupLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CompanyUI.aspx");
        }

        protected void itemSetupLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ItemUI.aspx");
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Item item = new Item();
            item.Name = itemNameTextBox.Text;
            try
            {
                item.CategoryID = Convert.ToInt32(categoryDropDownList.SelectedValue);
                item.CompanyID = Convert.ToInt32(companyDropDownList.SelectedValue);
            }
            catch (Exception ex)
            {
                
            }
            int validReorderLevel = itemManager.ReorderLevel(reorderLevelTextBox.Text);
            if (validReorderLevel < 0)
            {
                outputLabel.Text = "Please enter a positive value";
            }
            else
            {
                item.ReorderLevel = validReorderLevel;
                item.Quantity = 0;
                outputLabel.Text = itemManager.Save(item);
            }
            
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