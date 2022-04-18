using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEBBANHANG
{
    public partial class giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["renCartItems"] = showCartItems();
        }
        private string showCartItems()
        {
            string sHtml = "";
            List<Product> cartItems = Session["products"] as List<Product>;
            for (int i = 0; i < cartItems.Count; i++)
            {
                sHtml += "<div class='wrapper'>" +
                            "<div class='cart__items-image'>" +
                                "<img src = '" + cartItems[i].Image + "'/>" +
                            "</div>" +
                            "<div class='cart__items-content'>" +
                                "<h3>" + cartItems[i].Name + "</h3>" +
                                "<span>Quantity: </span>" +
                                "<button class='pd-1' onclick='onDecrementHandler(" + cartItems[i].Id + ")'>-</button>" +
                                "<span class='itemQuantity_"+ cartItems[i].Id + "'>" + 0 + "</span>" +
                                "<button class='pd-1' onclick='onIncrementHandler(" + cartItems[i].Id + ")'>+</button>" +
                                "<button class='pd-1''>Delete</button>" +
                                "<p class='price_"+cartItems[i].Id + "' data-price='"+ cartItems[i].Price + "'>Price: " + cartItems[i].Price + "đ</p>" +
                            "</div>" +
                        "</div>";


            }
            return sHtml;
        }
    }
}