using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystemWebApp.BLL;

namespace StockManagementSystemWebApp.UI
{
    public partial class ViewSalesUI : System.Web.UI.Page
    {
        ItemManager itemManager = new ItemManager();
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void viewSalesLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewSalesUI.aspx");
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            outputLabel.Text = "";
            string fromDate = fromDatePicker.Text;
            string toDate = toDatePicker.Text;
            if (fromDate != "" && toDate != "")
            {
                if (itemManager.ChkDateValidity(fromDate, toDate))
                {
                    if (itemManager.HasRows(fromDate, toDate))
                    {
                        viewSalesGridView.DataSource = itemManager.GetSalesBetweenTwoDates(fromDate, toDate);
                        viewSalesGridView.DataBind();
                    }
                    else
                    {
                        outputLabel.Text = "No sales found";
                        viewSalesGridView.DataSource = null;
                        viewSalesGridView.DataBind();
                    }
                }
                else
                {
                    outputLabel.Text = "To Date must be greater than From Date ";
                    viewSalesGridView.DataSource = null;
                    viewSalesGridView.DataBind();
                }

            }
            else
            {
                outputLabel.Text = "Please Select Both Dates";
                viewSalesGridView.DataSource = null;
                viewSalesGridView.DataBind();
            }
        }
    }
}