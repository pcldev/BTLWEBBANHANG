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
            //List<Products> arrProduct = new List<Products>();

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
            products.Add(new Product(1, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",12000,10000));
            products.Add(new Product(2, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",12000,10000));
            products.Add(new Product(3, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",12000,10000));
            products.Add(new Product(4, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",12000,10000));
            products.Add(new Product(5, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",12000,10000));
            products.Add(new Product(6, "QUẦN DÀI NAM" , "Thun Cá sấu Indo cao cấp, Mịn mát.", "asset/image/home/nam3.jpg","nam",12000,10000));
            Application["listProducts"] = products;
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
