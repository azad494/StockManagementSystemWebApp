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
    public partial class Demo1 : System.Web.UI.Page
    {
        ItemManager itemManager =new ItemManager();
        CompanyManager companyManager=new CompanyManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                companyDropDownList.DataSource = companyManager.GetAllCompanies();
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

        protected void stockInLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockInUI.aspx");
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (companyDropDownList.SelectedItem.ToString()=="Select Company")
            {
                outputLabel.Text = "Please select company";
            }
            else if(itemDropDownList.SelectedItem.ToString()=="No Item")
            {
                outputLabel.Text = "No items in the company";
            }
            else if (itemDropDownList.SelectedItem.ToString() == "Select Item")
            {
                outputLabel.Text = "Please select item";
            }
            else
            {
                int itemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                if (itemManager.chkQuantityValidity(stockInTextBox.Text))
                {
                    int quantity = Convert.ToInt32(stockInTextBox.Text);
                    outputLabel.Text = itemManager.Update(itemId, quantity);
                    Item item = itemManager.GetItemByID(itemId);
                    reorderLevelTextBox.Text = item.ReorderLevel.ToString();
                    availableQuantityTextBox.Text = item.Quantity.ToString();
                    categoryHiddenField.Value = item.CategoryID.ToString();
                }
                else
                {
                    outputLabel.Text = "Invalid Quantity";
                }
            }
        }

        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (companyDropDownList.SelectedIndex > 0)
            {
                itemDropDownList.Enabled = true;
                int companyID = Convert.ToInt32(companyDropDownList.SelectedValue);
                itemDropDownList.DataSource = itemManager.GetItemsByCompanyId(companyID);
                itemDropDownList.DataValueField = "Id";
                itemDropDownList.DataTextField = "Name";
                itemDropDownList.DataBind();
                if (itemDropDownList.Items.Count == 0)
                {
                    itemDropDownList.Items.Insert(0, "No Item");
                    reorderLevelTextBox.Text = "";
                    availableQuantityTextBox.Text = "";
                    categoryHiddenField.Value = "";
                }
                else
                {
                    itemDropDownList.Items.Insert(0,"Select Item");
                }
            }
            else
            {
                reorderLevelTextBox.Text = "";
                availableQuantityTextBox.Text = "";
                categoryHiddenField.Value = "";
            }
        }

        protected void itemDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
                int itemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                if (itemDropDownList.Items.Count > 0 && itemDropDownList.SelectedItem.ToString() != "Select Item")
                {
                    Item item = itemManager.GetItemByID(itemId);
                    reorderLevelTextBox.Text = item.ReorderLevel.ToString();
                    availableQuantityTextBox.Text = item.Quantity.ToString();
                    categoryHiddenField.Value = item.CategoryID.ToString();
                }
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