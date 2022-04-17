using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWEBBANHANG
{

    public class User
    {
        private string gmail;
        private string password;
        private string rePassword;

        public User(string gmail , string password, string rePassword)
        {
            this.gmail = gmail;
            this.password = password;
            this.rePassword = rePassword;
        }

        public string Gmail { get => gmail; set => gmail = value; }
        public string Password { get => password; set => password = value; }
        public string RePassword { get => rePassword; set => rePassword = value; }
    }
}