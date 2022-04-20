namespace BTLWEBBANHANG
{
    public class Products
    {
        public string id { get; set; }
        public string img { get; set; }
        public string name { get; set; }
        public string price { get; set; }
        public string newprice { get; set; }
        public string detail { get; set; }
        public string type { get; set; }

        public Products()
        {
        }

        public Products(string id, string img, string name, string price, string newprice, string detail, string type)
        {
            this.id = id;
            this.img = img;
            this.name = name;
            this.price = price;
            this.newprice = newprice;
            this.detail = detail;
            this.type = type;
        }
    }
}