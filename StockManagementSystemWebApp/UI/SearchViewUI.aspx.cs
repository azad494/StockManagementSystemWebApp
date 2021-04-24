using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystemWebApp.BLL;

namespace StockManagementSystemWebApp.UI
{
    public partial class Search_ViewUI : System.Web.UI.Page
    {
        ItemManager itemManager= new ItemManager();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                companyDropdownLIst.DataSource = itemManager.GetAllCompany();
                companyDropdownLIst.DataValueField = "Id";
                companyDropdownLIst.DataTextField = "Name";
                companyDropdownLIst.DataBind();
                companyDropdownLIst.Items.Insert(0, "Select Company");

                categoryDropdownList.DataSource = itemManager.GetAllCategories();
                categoryDropdownList.DataValueField = "Id";
                categoryDropdownList.DataTextField = "Name";
                categoryDropdownList.DataBind();
                categoryDropdownList.Items.Insert(0,"Select Category");
            }
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

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (companyDropdownLIst.SelectedIndex == 0 && categoryDropdownList.SelectedIndex == 0)
            {
                searchListGridView.DataSource = itemManager.GetSearchViewModels();
                searchListGridView.DataBind();
                int rowCount = searchListGridView.Rows.Count;
                if (rowCount <= 0)
                {
                    outputLabel.Text = "Data Not Found";
                }
            }
            else if(companyDropdownLIst.SelectedIndex==0 && categoryDropdownList.SelectedIndex>0)
            {
                int categoryId = Convert.ToInt32(categoryDropdownList.SelectedValue);
                searchListGridView.DataSource = itemManager.GetSearchViewModelsByCategoryId(categoryId);
                searchListGridView.DataBind();
                int rowCount = searchListGridView.Rows.Count;
                if (rowCount <= 0)
                {
                    outputLabel.Text = "Data Not Found";
                }
            }
            else if (companyDropdownLIst.SelectedIndex > 0 && categoryDropdownList.SelectedIndex == 0)
            {
                int companyId = Convert.ToInt32(companyDropdownLIst.SelectedValue);
                searchListGridView.DataSource = itemManager.GetSearchViewModelsByCompanyId(companyId);
                searchListGridView.DataBind();
                int rowCount = searchListGridView.Rows.Count;
                if (rowCount <= 0)
                {
                    outputLabel.Text = "Data Not Found";
                }
            }
            else if (companyDropdownLIst.SelectedIndex > 0 && categoryDropdownList.SelectedIndex > 0)
            {
                int companyId = Convert.ToInt32(companyDropdownLIst.SelectedValue);
                int categoryId = Convert.ToInt32(categoryDropdownList.SelectedValue);
                searchListGridView.DataSource = itemManager.GetSearchViewModelsByBothId(companyId, categoryId);
                searchListGridView.DataBind();
                int rowCount = searchListGridView.Rows.Count;
                if (rowCount <= 0)
                {
                    outputLabel.Text = "Data Not Found";
                }

            }
        }

        protected void viewSalesLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSalesUI.aspx");
        }

    }
}