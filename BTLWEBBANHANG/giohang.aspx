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
      const cartItemHTML = "<%= Session["renCartItems"]%>"

      const cartContainer = document.querySelector(".cart__items");

      cartContainer.innerHTML = cartItemHTML;
      onUpdateTotalPrice();
      function onIncrementHandler(id) {
          const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

          const itemPrice = document.querySelector(`.price_${id}`);
          if (+itemQuantity.innerHTML === 11) {
              return;
          } else {
              //window.location.pathname="/IncrementCartItem.aspx"
              itemQuantity.innerHTML = +itemQuantity.innerHTML + 1;
              itemPrice.innerHTML = +itemQuantity.innerHTML * itemPrice.dataset.price ;
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
              itemPrice.innerHTML = +itemQuantity.innerHTML * itemPrice.dataset.price ;
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

          const arrQuantites = []
          itemQuantities.forEach((quantity)=>{
            arrQuantites.push(+quantity.innerHTML)
          })
          const totalPrice = arrPrices.reduce((pre, next) => pre + next, 0);

          const totalQuantity = arrQuantites.reduce((pre,next)=> pre + next , 0)

          cartrecap.innerHTML = `<h2>Recap</h2>
        <p>${totalQuantity} products: ${totalPrice}đ</p>
        <p>Shipping: Freeship</p>
        <p>Total: ${totalPrice}đ</p>
        <button class="btn-main big-btn-pd">Proceed to checkout</button>`;
      }
    </script>
  </body>
</html>
