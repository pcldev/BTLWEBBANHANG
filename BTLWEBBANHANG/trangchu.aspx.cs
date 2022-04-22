using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEBBANHANG
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Product> products = (List<Product>)Application["listProducts"];
            string sHTML = "";
            for(int i = 0; i < products.Count; i++)
            {
                sHTML += "<div class='all'>";
                sHTML += "<img src='" + products[i].Image + "' class='img'/> ";
                sHTML += "<div class='list-banchay-text'>";
                sHTML += "<p class='tensp'>"+ products[i].Name + "</p>";
                sHTML += "<span class='list-banchay-gia'><strike>"+ products[i].Price + "</strike></span>";
                sHTML += "<span class='list-banchay-giamoi'>"+ products[i].NewPrice + "</span>";
                sHTML += "<i class='far fa-heart'></i>";
                sHTML += "</div>";
                sHTML += "<button class='btn-them' onclick='themgiohang("+ products[i].Id + ",'" + products[i].Name + "','" + products[i].Description + "','" + products[i].Image + "','" + products[i].Type + "'," + products[i].Price + ");' >Thêm vào giỏ hàng</button>";
                sHTML += "</div>";
            }

            Session["renHomePage"] = sHTML;

            //foreach (Products topbanchay1 in trangchu1)
            //{
            //    if (topbanchay1.type == "top")
            //    {
            //        topbanchay.InnerHtml += "< div class='all'>" +
            //         "<img src = " + topbanchay1.img + " class='img' />" +
            //        "<div class='list-banchay-text'>" +
            //           "<p class='tensp'> " + topbanchay1.name + "</p>" +
            //           "<span class='list-banchay-gia'><strike> " + topbanchay1.price + "</strike></span>" +
            //           "<span class='list-banchay-giamoi'> " + topbanchay1.newprice + "</span>" +
            //           "<i class='far fa-heart'></i>" +


            //       "</div>" +
            //      "<button class='btn-them' id='" + topbanchay1.id + "' >Thêm vào giỏ hàng</button>" +
            //   "</div>";

            //    }

            //}
        
    }
    }
}