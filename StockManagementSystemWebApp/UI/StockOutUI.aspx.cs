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
    public partial class StockOutUI : System.Web.UI.Page
    {
        CartManager cartManager= new CartManager();
        CompanyManager companyManager= new CompanyManager();
        ItemManager itemManager= new ItemManager();
        StockOutManager stockOutManager= new StockOutManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                companyDropDownList.DataSource = companyManager.GetAllCompanies();
                companyDropDownList.DataValueField = "Id";
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataBind();
                companyDropDownList.Items.Insert(0,"Select Company");
                cartManager.DropCart();
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

        protected void stockOutLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockOutUI.aspx");
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
                    itemDropDownList.Items.Insert(0, "Select Item");
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
            if (companyDropDownList.SelectedIndex > 0)
            {
                int itemId=0;
                try
                {
                    itemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                }
                catch (Exception ex)
                {
                  
                }
                if (itemDropDownList.SelectedIndex > 0)
                {
                    Item item = itemManager.GetItemByID(itemId);
                    reorderLevelTextBox.Text = item.ReorderLevel.ToString();
                    availableQuantityTextBox.Text = item.Quantity.ToString();
                    categoryHiddenField.Value = item.CategoryID.ToString();
                }
                else if (itemDropDownList.SelectedItem.ToString() == "Select Item")
                {
                    reorderLevelTextBox.Text = "";
                    availableQuantityTextBox.Text = "";
                    categoryHiddenField.Value = null;
                }
            }
        }

        protected void stockOutLinkButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("StockOutUI.aspx");
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            Cart cart= new Cart();
            if (companyDropDownList.SelectedIndex > 0)
            {
                cart.CompanyID  = Convert.ToInt32(companyDropDownList.SelectedValue);
                cart.CompanyName = companyDropDownList.SelectedItem.ToString();
                if (itemDropDownList.SelectedItem.ToString()=="Select Item")
                {
                    outputLabel.Text = "Please select item";
                }
                else if (itemDropDownList.SelectedIndex > 0)
                {
                    cart.ItemID = Convert.ToInt32(itemDropDownList.SelectedValue);
                    cart.ItemName = itemDropDownList.SelectedItem.ToString();
                    if (cartManager.chkQuantityValidity(stockOutTextBox.Text))
                    {
                        cart.Quantity = Convert.ToInt32(stockOutTextBox.Text);
                        int availableQuantity = Convert.ToInt32(availableQuantityTextBox.Text);
                        outputLabel.Text = cartManager.Add(cart, availableQuantity);
                    }
                    else
                    {
                        outputLabel.Text = "Invalid quantity";
                    }
                }
                else if (itemDropDownList.SelectedItem.ToString() == "No Item")
                {
                    outputLabel.Text = "No Item";
                }
            }
            else
            {
                outputLabel.Text = "Please select company";
            }

            stockOutGridViewList.DataSource = cartManager.GetAllCarts();
            stockOutGridViewList.DataBind();
        }

        protected void sellButton_Click(object sender, EventArgs e)
        {
            if (cartManager.IsCartExist())
            {
                List<Cart> cartList = cartManager.GetAllCarts();
                outputLabel.Text = stockOutManager.Save(cartList, "Sold");
                itemManager.ItemQuantityDelete(cartList);
                cartManager.DropCart();
                stockOutGridViewList.DataSource = cartManager.GetAllCarts();
                stockOutGridViewList.DataBind();
                int itemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                Item item = itemManager.GetItemByID(itemId);
                reorderLevelTextBox.Text = item.ReorderLevel.ToString();
                availableQuantityTextBox.Text = item.Quantity.ToString();
                categoryHiddenField.Value = item.CategoryID.ToString();
                stockOutTextBox.Text = "";
            }
            else
            {
                outputLabel.Text = "Add some quantity to cart";
            }
        }

        protected void damageButton_Click(object sender, EventArgs e)
        {
            if (cartManager.IsCartExist())
            {
                List<Cart> cartList = cartManager.GetAllCarts();
                outputLabel.Text = stockOutManager.Save(cartList, "Damaged");
                itemManager.ItemQuantityDelete(cartList);
                cartManager.DropCart();
                stockOutGridViewList.DataSource =null;
                stockOutGridViewList.DataBind();
                int itemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                Item item = itemManager.GetItemByID(itemId);
                reorderLevelTextBox.Text = item.ReorderLevel.ToString();
                availableQuantityTextBox.Text = item.Quantity.ToString();
                categoryHiddenField.Value = item.CategoryID.ToString();
            }
            else
            {
                outputLabel.Text = "Add some quantity to cart";
            }
        }

        protected void lostButton_Click(object sender, EventArgs e)
        {
            if (cartManager.IsCartExist())
            {
                List<Cart> cartList = cartManager.GetAllCarts();
                outputLabel.Text = stockOutManager.Save(cartList, "Lost");
                itemManager.ItemQuantityDelete(cartList);
                cartManager.DropCart();
                stockOutGridViewList.DataSource = cartManager.GetAllCarts();
                stockOutGridViewList.DataBind();
                int itemId = Convert.ToInt32(itemDropDownList.SelectedValue);
                Item item = itemManager.GetItemByID(itemId);
                reorderLevelTextBox.Text = item.ReorderLevel.ToString();
                availableQuantityTextBox.Text = item.Quantity.ToString();
                categoryHiddenField.Value = item.CategoryID.ToString();
            }
            else
            {
                outputLabel.Text = "Add some quantity to cart";
            }
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