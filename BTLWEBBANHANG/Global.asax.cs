using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTLWEBBANHANG
{
    public class Global : System.Web.HttpApplication
    {


        protected void Application_Start(object sender, EventArgs e)
        {
            //Application["products"] = new List<Products>();
            //List<Products> arrProduct = new List<Products>()u
            //List<Products> arrLiked = new List<Products>();
            //Application.Add("arrLiked", arrLiked);
            //Top
            //thu
            //arrProduct.Add(new Products() { id = "1", img= "asset/image/home/nam3.jpg", name = "QUẦN DÀI NAM", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });
            //arrProduct.Add(new Products() { id = "2", img = "asset/image/home/nam3.jpg", name = "QUẦN THỂ THAO NAM", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });
            //arrProduct.Add(new Products() { id = "3", img = "asset/image/home/nu1.jpg", name = "VÁY TRẮNG CÔNG CHÚA", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });
            //arrProduct.Add(new Products() { id = "4", img = "asset/image/home/nam.jpg", name = "ÁO THUN NAM TRẮNG ĐƠN GIẢN", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });
            //arrProduct.Add(new Products() { id = "5", img = "asset/image/home/nam.jpg", name = "ÁO THUN NAM TRẮNG ĐƠN GIẢN", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });
            //arrProduct.Add(new Products() { id = "6", img = "asset/image/home/nam.jpg", name = "ÁO THUN NAM TRẮNG ĐƠN GIẢN", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });
            //arrProduct.Add(new Products() { id = "7", img = "asset/image/home/nam.jpg", name = "ÁO THUN NAM TRẮNG ĐƠN GIẢN", price = "99.000", newprice = "150.000", detail = "Thun Cá sấu Indo cao cấp, Mịn mát.", type = "top" });


            //Application["products"] = arrProduct;



            List<Product> products = new List<Product>();
            products.Add(new Product(1, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",120000,10000));
            products.Add(new Product(2, "BỘ QUẦN ÁO NAM " , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam1.jpg","nam",100000,90000));
            products.Add(new Product(3, "ÁO PHÔNG GIẤY MÁT" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu2.jpg","nam",150000,99000));
            products.Add(new Product(4, "ÁO PHÔNG CUTE" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu9.JPG", "nam",80000,50000));
            products.Add(new Product(5, "TÚI XÁCH ĐẸP" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu13.jpg","nam",300000,250000));
            products.Add(new Product(6, "ÁO CROTOP CHO NỮ" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu6.jpg","nam",12000,10000));
            products.Add(new Product(7, "TÚI XÁCH TRẮNG", "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu12.jpg", "nam", 260000, 230000));
            products.Add(new Product(8, "ÁO PHÔNG FREESIZE", "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu7.jpg", "nam", 12000, 99000));
            products.Add(new Product(9, "ĐỒNG HỒ NAM", "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam6.jpg", "nam", 600000, 590000));
            products.Add(new Product(10, "KÍNH MẮT NAM NỮ", "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam8.jpg", "nam", 12000, 10000));
            products.Add(new Product(11, "KẸP TÓC HÀN QUỐC", "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu11.jpg", "nam", 60000, 55000));
            products.Add(new Product(12, "SƠ MI ĐẸP", "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nu3.jpg", "nam", 180000, 150000));
            
            List<User> users  = new List<User>();
            Application["listProducts"] = products;
            Application["listUser"] = users;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            List<User> users = new List<User>();
            //products.Add(new Product(1, "Item 1", "This is the description of item 1","./asset/image/img_1.jpg","nam", 1000));
            //products.Add(new Product(2, "Item 2", "This is the description of item 2","./asset/image/img_2.jpg","nu", 3000));
            Session["products"] = products;
            Application["users"] = users;
            //ad123
            Session["account"] = "";

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //Application["cart"] = new List<Cart>();
            Session["account"] = "";

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
