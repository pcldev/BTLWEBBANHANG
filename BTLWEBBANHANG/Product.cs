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
        private string type;
        private long price;
        private long newPrice;
       

        public Product(int id , string name, string description ,string image ,string type,long price,long newPrice )
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.image = image;
            this.Type = type;
            this.price = price;
            this.newPrice = newPrice;
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public string Image { get => image; set => image = value; }
        public string Type { get => type; set => type = value; }
        public long Price { get => price; set => price = value; }
        public long NewPrice { get => newPrice; set => newPrice = value; }
       
    }
}