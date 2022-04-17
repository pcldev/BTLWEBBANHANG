using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWEBBANHANG
{
    public class Product
    {
        private int id;
        private string name;
        private string description;
        private string image;
        private long price;

        public Product(int id , string name, string description ,string image ,long price )
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.Image = image;
            this.price = price;
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public string Image { get => image; set => image = value; }
        public long Price { get => price; set => price = value; }
    }
}