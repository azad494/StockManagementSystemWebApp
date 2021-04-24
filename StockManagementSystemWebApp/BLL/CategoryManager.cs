using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.BLL
{
    public class CategoryManager
    {
        private CategoryGateway categoryGateway = new CategoryGateway();

        public string Save(Category category)
        {
            if (string.IsNullOrWhiteSpace(category.Name))
            {
                return "Category name required";
            }
            else
            {
                if (categoryGateway.IsCategoryExists(category.Name))
                {
                    return "Category name already exists";
                }
                else if (AlphaNumeric(category.Name) == false)
                {
                    return "Category name must contains atleast one alphabet";
                }
                else
                {
                    int rowAffect = categoryGateway.Save(category);
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

        public List<Category> GetAllCategories()
        {
            return categoryGateway.GetAllCategories();
        }

        public Category GetCategoryById(int id)
        {
            return categoryGateway.GetCategoryById(id);
        }

        public string UpdateById(Category category)
        {
            if (string.IsNullOrWhiteSpace(category.Name))
            {
                return "Category name required";
            }
            else
            {
                if (categoryGateway.IsCategoryExists(category.Name))
                {
                    return "Category name already exists";
                }
                else if (AlphaNumeric(category.Name) == false)
                {
                    return "Category name must contains atleast one alphabet";
                }
                else
                {
                    int rowAffect = categoryGateway.UpdateById(category);
                    if (rowAffect > 0)
                    {
                        return "Update Successful";
                    }
                    else
                    {
                        return "Update Failed";
                    }
                }
            }
        }
    }
}