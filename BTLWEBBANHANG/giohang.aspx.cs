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
                                "<button class='smallest-btn-pd btn-change-item ' onclick='onDecrementHandler(" + cartItems[i].Id + ")'><img src='./asset/items/btnMinus.png' alt='-'></button>" +
                                "<span class='itemQuantity pd-1 itemQuantity_"+ cartItems[i].Id + "'>" + 1 + "</span>" +
                                "<button class='smallest-btn-pd btn-change-item ' onclick='onIncrementHandler(" + cartItems[i].Id + ")'><img src='./asset/items/btnplus.png' alt='+'></button>" +
                                "<button class='small-btn-pd btn-change-item '><img src='./asset/items/btnDeleteItem.png' alt='Delete'></button>" +
                                "<br>"+
                                "<span>Price: </span>"+
                                "<span class='price price_"+cartItems[i].Id + "' data-price='"+ cartItems[i].Price + "'>" + cartItems[i].Price + "</span>" +
                                "<span>đ</span>"+
                            "</div>" +
                        "</div>";


            }
            return sHtml;
        }
    }
}