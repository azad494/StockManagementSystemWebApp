using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.BLL
{
    public class CompanyManager
    {
        CompanyGateway companyGateway=new CompanyGateway();

        public string Save(Company company)
        {
            if (string.IsNullOrWhiteSpace(company.Name))
            {
                return "Company name required";
            }
            else
            {
                if (companyGateway.IsCompanyExists(company.Name))
                {
                    return "Company name already exists";
                }
                else if (AlphaNumeric(company.Name)==false)
                {
                    return "Company name must contains atleast one alphabet";
                }
                else
                {
                    int rowAffect = companyGateway.Save(company);
                    if (rowAffect > 0)
                    {
                        return "Save Succesful";
                    }
                    else
                    {
                        return "Save Failed";
                    }
                }
            }
        }

        public List<Company> GetAllCompanies()
        {
            return companyGateway.GetAllCompanies();
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
    }
}