<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs"
Inherits="BTLWEBBANHANG.giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <link
      rel="stylesheet"
      runat="server"
      media="screen"
      href="./asset/css/cart.css"
    />

    <title>Your cart</title>
  </head>
  <body>
    <div class="container">
      <h1>Your Cart</h1>
      <div class="cart__content">
        <div class="cart__items"></div>
        <div class="cart__recap"></div>
      </div>
    </div>
    <script>
        
       //localStorage.setItem("cart",JSON.stringify([
       //  {
       //    id:1,
       //    name:"Item 1",
       //    description: "This is the description of item 1",
       //    image:"./asset/image/img_1.jpg",
       //    type:"nam",
       //    price:1000
       //  },
       // {
       //    id:2,
       //    name:"Item 2",
       //    description: "This is the description of item 2",
       //    image:"./asset/image/img_2.jpg",
       //    type:"nu",
       //    price:3000
       //  }
       //]))

        const listCartItems = JSON.parse(localStorage.getItem("cart"));
        if (listCartItems) {
            let sHtml = "";
            for (var i = 0; i < listCartItems.length; i++) {
                sHtml +=
                    "<div class='wrapper'>" +
                    "<div class='cart__items-image'>" +
                    "<img src = '" +
                    listCartItems[i].image +
                    "'/>" +
                    "</div>" +
                    "<div class='cart__items-content'>" +
                    "<h3>" +
                    listCartItems[i].name +
                    "</h3>" +
                    "<span>Quantity: </span>" +
                    "<button class='smallest-btn-pd btn-change-item ' onclick='onDecrementHandler(" +
                    listCartItems[i].id +
                    ")'><img src='./asset/items/btnMinus.png' alt='-'></button>" +
                    "<span class='itemQuantity pd-1 itemQuantity_" +
                    listCartItems[i].id +
                    "'>" +
                    1 +
                    "</span>" +
                    "<button class='smallest-btn-pd btn-change-item ' onclick='onIncrementHandler(" +
                    listCartItems[i].id +
                    ")'><img src='./asset/items/btnplus.png' alt='+'></button>" +
                    "<button class='small-btn-pd btn-change-item '><img src='./asset/items/btnDeleteItem.png' alt='Delete'></button>" +
                    "<br>" +
                    "<span>Price: </span>" +
                    "<span class='price price_" +
                    listCartItems[i].id +
                    "' data-price='" +
                    listCartItems[i].price +
                    "'>" +
                    listCartItems[i].price +
                    "</span>" +
                    "<span>đ</span>" +
                    "</div>" +
                    "</div>";
            }
            //const cartItemHTML = "<%= Session["renCartItems"]%>"

            const cartContainer = document.querySelector(".cart__items");

            cartContainer.innerHTML = sHtml;
        }
      
      onUpdateTotalPrice();
      function onIncrementHandler(id) {
        const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

        const itemPrice = document.querySelector(`.price_${id}`);
        if (+itemQuantity.innerHTML === 11) {
          return;
        } else {
          //window.location.pathname="/IncrementCartItem.aspx"
          itemQuantity.innerHTML = +itemQuantity.innerHTML + 1;
          itemPrice.innerHTML =
            +itemQuantity.innerHTML * itemPrice.dataset.price;
          onUpdateTotalPrice();
        }
      }
      function onDecrementHandler(id) {
        const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

        const itemPrice = document.querySelector(`.price_${id}`);
        if (+itemQuantity.innerHTML === 0) {
          return;
        } else {
          itemQuantity.innerHTML = +itemQuantity.innerHTML - 1;
          itemPrice.innerHTML =
            +itemQuantity.innerHTML * itemPrice.dataset.price;
          onUpdateTotalPrice();
        }
      }
      function onUpdateTotalPrice() {
        const itemQuantities = document.querySelectorAll(`.itemQuantity`);
        const cartrecap = document.querySelector(".cart__recap");
        const wrappers = document.querySelectorAll(".wrapper");
        const arrItems = document.querySelectorAll(".price");

        const arrPrices = [];
        arrItems.forEach((item) => {
          arrPrices.push(+item.innerHTML);
        });

        const arrQuantites = [];
        itemQuantities.forEach((quantity) => {
          arrQuantites.push(+quantity.innerHTML);
        });
        const totalPrice = arrPrices.reduce((pre, next) => pre + next, 0);

        const totalQuantity = arrQuantites.reduce((pre, next) => pre + next, 0);

        cartrecap.innerHTML = `<h2>Recap</h2>
         <p>${totalQuantity} products: ${totalPrice}đ</p>
         <p>Shipping: Freeship</p>
         <p>Total: ${totalPrice}đ</p>
         <button class="btn-main big-btn-pd">Proceed to checkout</button>`;
      }
    </script>
  </body>
</html>
