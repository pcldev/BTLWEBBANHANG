using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEBBANHANG
{
    public partial class TrangConChiTiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            List<Product> list = new List<Product>();
            list = (List<Product>)Application["listProducts"];

            string sHTML ="";
            for(int i =0; i<list.Count; i++)
            {
                if (list[i].Id == id)
                {
                    sHTML += "<div class='img-block'>";
                    sHTML += "<img src = '"+list[i].Image+"' alt=''>";
                    sHTML += "</div>";
                    sHTML += "<div class='product-detail'>";
                    sHTML += "<h2>"+list[i].Name+"</h2>";
                    sHTML += "<p class='price' data-price= '"+ list[i].Price+ "'>" + list[i].Price + "</p>";
                    sHTML += "<p>Số lượng</p>";
                    sHTML += "<button class='smallest-btn-pd btn-change-item ' onclick='onDecrementHandler()'>";
                    sHTML += "<img src = './asset/items/btnMinus.png' alt='-'></button>";
                    sHTML += "<span class='itemQuantity pd-1 '>1</span>";
                    sHTML += "<button class='smallest-btn-pd btn-change-item ' onclick='onIncrementHandler()'><img src = './asset/items/btnplus.png' alt='+'></button>";
                    sHTML += "<br>";
                    sHTML += "<button class='btn btn-second big-btn-pd' data-id=" + list[i].Id + " data-name='" + list[i].Name + "'  data-description=" + list[i].Id + "  data-id=" + list[i].Description + "  data-image=" + list[i].Image + " data-type=" + list[i].Type + "  data-price=" + list[i].Price + "  data-newPrice=" + list[i].NewPrice + "   onclick='themgiohang(this);' >Thêm vào giỏ hàng</button>";
                    sHTML += "<br><button class='btn btn-main big-btn-pd mt-1'>Mua ngay</button></div>";
                }
            }
            Session["Hientrangconchitiet"] = sHTML;
        }
    }
}