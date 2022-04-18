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
            //mmmmmmmmm
            //long
            //Lan Anh
            //pcl
            //nani
            //ạhckabn
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            List<Product> products = new List<Product>();
            List<User> users = new List<User>();
            products.Add(new Product(1, "Item 1", "This is the description of item 1","./asset/image/img_1.jpg", 1000));
            products.Add(new Product(2, "Item 2", "This is the description of item 2","./asset/image/img_2.jpg", 3000));
            Session["products"] = products;
            Application["users"] = users;
            //ad123

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

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
