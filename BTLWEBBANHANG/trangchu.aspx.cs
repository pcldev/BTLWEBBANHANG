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
            List<Products> trangchu1 = (List<Products>)Application["products"];
            foreach (Products topbanchay1 in trangchu1)
            {
                if (topbanchay1.type == "top")
                {
                    topbanchay.InnerHtml += "< img src = " + topbanchay1.img + " class='img'/>" +
               " <div class='list-banchay-text>" +
                "<span class='list-banchay-gia'><strike>" + topbanchay1.price + "</strike></span>" +
                   " <span class='list-banchay-giamoi'>" + topbanchay1.newprice + "</span>" +
                    "<i class='far fa-heart'></i>" +
                    " </div>" +
                "<button id='" + topbanchay1.id + "' class='btn-them'>Thêm vào giỏ hàng</button>";

                }

            }
        
    }
    }
}