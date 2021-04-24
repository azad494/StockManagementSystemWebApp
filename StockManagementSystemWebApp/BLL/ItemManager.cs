using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Model;
using StockManagementSystemWebApp.DAL.Model.ViewModel;

namespace StockManagementSystemWebApp.BLL
{
    public class ItemManager
    {
        ItemGateway itemGateway=new ItemGateway();

        public string Save(Item item)
        {
            if (item.CompanyID == 0 || item.CategoryID == 0 || item.Name == "")
            {
                return "First three fields required";
            }
            else
            {
                if (string.IsNullOrWhiteSpace(item.Name))
                {
                    return "Item name required";
                }
                else
                {
                    if (itemGateway.IsItemExists(item.Name, item.CompanyID))
                    {
                        return "Item in this company already exists";
                    }
                    else if (AlphaNumeric(item.Name) == false)
                    {
                        return "Item name must contains atleast one alphabet";
                    }
                    else
                    {
                        int rowAffect = itemGateway.Save(item);
                        if (rowAffect > 0)
                        {
                            return "Save Successful";
                        }
                        else
                        {
                            return "Save Failed";
                        }
                    }
                }
            }
        }

        public int ReorderLevel(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
            {
                return 0;
            }
            else if (Convert.ToInt32(text) < 0)
            {
                return -1;
            }
            else
            {
                return Convert.ToInt32(text);
            }
        }
        public bool AlphaNumeric(string name)
        {
            int count = 0;
            for (int i = 0; i < name.Length; i++)
            {
                if (name[i] >= 'a' && name[i] <= 'z' || name[i] >= 'A' && name[i] <= 'Z')
                {
                    count++;
                    break;
                }
            }
            if (count > 0)
            {
                return true;
            }
            else
                return false;
        }

        public bool chkQuantityValidity(string quantity)
        {
            if (string.IsNullOrWhiteSpace(quantity))
            {
                return false;
            }
            else if (AlphaNumeric(quantity))
            {
                return false;
            }
            else
            {
                if ((int)Convert.ToDouble(quantity) <= 0)
                {
                    return false;
                }
                else
                {

                    for (int i = 0; i < quantity.Length; i++)
                    {
                        if (quantity[i] == '.')
                        {
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        public string Update(int itemId, int quantity)
        {
            if (itemId == 0)
            {
                return "Please Select Item";
            }
            else if (quantity==0)
            {
                return "Select Quantity Greater than 0";
            }
            else
            {
                int rowAffet = itemGateway.Update(itemId, quantity);
                if (rowAffet > 0)
                {
                    return "Update Succesful";
                }
                else
                {
                    return "Update failed";
                }
            }
        }

        public void ItemQuantityDelete(List<Cart> carts)
        {
            foreach (Cart cart in carts)
            {
                itemGateway.ItemQuantityDelete(cart.ItemID, cart.Quantity);
            }
        }
        public List<Item> GetItemsByCompanyId(int id)
        {
            return itemGateway.GetItemsByCompanyId(id);
        }

        public Item GetItemByID(int id)
        {
            return itemGateway.GetItemByID(id);
        }

        public List<Category> GetAllCategories()
        {
            return itemGateway.GetAllCategories();
        }

        public List<Company> GetAllCompany()
        {
            return itemGateway.GetAllCompany();
        }

        public List<SearchViewModel> GetSearchViewModels()
        {
            return itemGateway.GetSearchViewModels();
        }

        public List<SearchViewModel> GetSearchViewModelsByCompanyId(int companyId)
        {
            return itemGateway.GetSearchViewModelsByCompanyId(companyId);
        }

        public List<SearchViewModel> GetSearchViewModelsByCategoryId(int categoryId)
        {
            return itemGateway.GetSearchViewModelsByCategoryId(categoryId);
        }

        public List<SearchViewModel> GetSearchViewModelsByBothId(int companyId, int categoryId)
        {
            return itemGateway.GetSearchViewModelsByBothId(companyId, categoryId);
        }

        public bool ChkDateValidity(string fromDate, string toDate)
        {
            DateTime fd;
            DateTime td;
            DateTime.TryParse(fromDate,out fd);
            DateTime.TryParse(toDate, out td);
            if (fd <= td)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public List<SalesViewModel> GetSalesBetweenTwoDates(string fromDate, string toDate)
        {
            return itemGateway.GetSalesBetweenTwoDates(fromDate, toDate);
        }

        public bool HasRows(string fromDate, string toDate)
        {
            return itemGateway.HasRows(fromDate,toDate);
        }
    }
}