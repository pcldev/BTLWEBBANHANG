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


            if(Request.QueryString["sort"] != null || Request.QueryString["sort"] != ""){
                 List<Product> products = (List<Product>)Application["listProducts"];
                if(Request.QueryString["sort"] == "1"){
                    products.Sort((x, y) => x.NewPrice.CompareTo(y.NewPrice));
                }else if(Request.QueryString["sort"] == "0"){
                    products.Sort((x, y) => y.NewPrice.CompareTo(x.NewPrice));
                }
                string sHTML = "";
                for(int i = 0; i < products.Count; i++)
                {
                    sHTML += "<div class='all'>";
                    sHTML += " <a href ='TrangConChiTiet.aspx?id="+products[i].Id  +"'>";
                    sHTML += "<img src='" + products[i].Image + "' class='img'/> </a> ";
                    sHTML += "<div class='list-banchay-text'>";
                    sHTML += "<p class='tensp'>"+ products[i].Name + "</p>";
                    sHTML += "<span class='list-banchay-gia'><strike>"+ products[i].Price + "</strike></span>";
                    sHTML += "<span class='list-banchay-giamoi'>"+ products[i].NewPrice + "</span>";
                    sHTML += "<i class='far fa-heart'></i>";
                    sHTML += "</div>";
                    sHTML += "<button class='btn-them' data-id=" + products[i].Id + " data-name='" + products[i].Name + "'  data-description=" + products[i].Id + "  data-id=" + products[i].Description + "  data-image=" + products[i].Image + " data-type=" + products[i].Type + "  data-price=" + products[i].Price + "  data-newPrice=" + products[i].NewPrice + "   onclick='themgiohang(this);' >Thêm vào giỏ hàng</button>";
                    sHTML += "</div>";
                }

                Session["renHomePage"] = sHTML;
            }

            else{
                List<Product> products = (List<Product>)Application["listProducts"];
                string sHTML = "";
                for(int i = 0; i < products.Count; i++)
                {
                    sHTML += "<div class='all'>";
                    sHTML += " <a href ='TrangConChiTiet.aspx?id="+products[i].Id  +"'>";
                    sHTML += "<img src='" + products[i].Image + "' class='img'/> </a> ";
                    sHTML += "<div class='list-banchay-text'>";
                    sHTML += "<p class='tensp'>"+ products[i].Name + "</p>";
                    sHTML += "<span class='list-banchay-gia'><strike>"+ products[i].Price + "</strike></span>";
                    sHTML += "<span class='list-banchay-giamoi'>"+ products[i].NewPrice + "</span>";
                    sHTML += "<i class='far fa-heart'></i>";
                    sHTML += "</div>";
                    sHTML += "<button class='btn-them' data-id=" + products[i].Id + " data-name='" + products[i].Name + "'  data-description=" + products[i].Id + "  data-id=" + products[i].Description + "  data-image=" + products[i].Image + " data-type=" + products[i].Type + "  data-price=" + products[i].Price + "  data-newPrice=" + products[i].NewPrice + "   onclick='themgiohang(this);' >Thêm vào giỏ hàng</button>";
                    sHTML += "</div>";
                }

                Session["renHomePage"] = sHTML;
            }


    }
    }
}