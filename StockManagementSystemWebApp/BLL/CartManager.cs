using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystemWebApp.DAL.Gateway;
using StockManagementSystemWebApp.DAL.Model;

namespace StockManagementSystemWebApp.BLL
{
    public class CartManager
    {
        CartGateway cartGateway = new CartGateway();
        public string Add(Cart cart, int availableQuantity)
        {
            int existingQuantity = cartGateway.ChkQuantity(cart.ItemID);
            if (existingQuantity + cart.Quantity > availableQuantity)
            {
                return "Quantity is greater than stock";
            }
            else
            {
                int rowAffect = cartGateway.Add(cart);
                if (rowAffect > 0)
                {
                    return "Add successful";
                }
                else
                {
                    return "Add failed";
                }
            }
        }

        public List<Cart> GetAllCarts()
        {
            return cartGateway.GetAllCarts();
        }

        public bool AlphaNumeric(string quantity)
        {
            int count = 0;
            for (int i = 0; i < quantity.Length; i++)
            {
                if (quantity[i] >= 'a' && quantity[i] <= 'z' || quantity[i] >= 'A' && quantity[i] <= 'Z')
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

        public bool IsCartExist()
        {
            return cartGateway.IsCartExist();
        }
        public void DropCart()
        {
            cartGateway.DropCart();
        }
    }
}