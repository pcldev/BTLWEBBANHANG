using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWEBBANHANG
{
    public class product
    {
        private int id;
        private string name;
        private string description;
        private long price;

        public product()
        {

        }

        public product(int id , string name, string description , long price)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.price = price;
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public long Price { get => price; set => price = value; }
    }
}