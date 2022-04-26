using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEBBANHANG
{
    public partial class useraccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["gmaildangky"] != null && Request.Form["mkDK1"] != null && Request.Form["mkDK2"] != null)
            {
                string tenDN = Request.Form["gmaildangky"];
                string pass = Request.Form["mkDK1"];
                string pass2 = Request.Form["mkDK2"];
                List<User> users = new List<User>();
                users = Application["listUser"] as List<User>;

                int count = 0;
                for (int i = 0; i < users.Count; i++)
                {
                    if (tenDN.Equals(users[i].Gmail))
                    {
                        Response.Write("<script>alert('Tên đăng nhập đã tồn tại')</script>");
                        count++;
                    }
                }

                if (count == 0)
                {
                    HttpCookie mycookie = new HttpCookie("userCookie");
                    mycookie.Value = tenDN;
                    mycookie.Expires = DateTime.Now.AddMinutes(1);
                    HttpContext.Current.Response.Cookies.Add(mycookie);
                    users.Add(new User(tenDN, pass, pass2));
                    Application["listUser"] = users;
                    Response.Redirect("~/trangchu.aspx");
                }


            }
            if (Request.Form["inputTenDN"] != null && Request.Form["inputPassword"] != null)
            {
                string tendn = Request.Form["inputTenDN"];
                string password = Request.Form["inputPassword"];
                List<User> users = new List<User>();
                users = Application["listUser"] as List<User>;

                int count1 = 0;


                for (int i = 0; i < users.Count; i++)
                {

                    if (tendn.Equals(users[i].Gmail) && password.Equals(users[i].Password))
                    {
                        count1++;
                        HttpCookie mycookie = new HttpCookie("userCookie");
                        mycookie.Value = tendn;
                        mycookie.Expires = DateTime.Now.AddMinutes(10);
                        HttpContext.Current.Response.Cookies.Add(mycookie);
                        Response.Redirect("~/trangchu.aspx");
                        
                    }
                }
                if(count1 == 0) { 
                    Response.Write("<script>alert('ten dang nhap hoac mat khau ko dung ')</script>");
                }
                else
                {
                    Response.Write("<script>alert('dang nhap thanh cong ')</script>");
                }
            }

        }
    }
}