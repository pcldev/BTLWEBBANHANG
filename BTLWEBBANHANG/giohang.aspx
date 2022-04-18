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
        <div class="cart__items">
          <!-- <div class="wrapper">
            <div class="cart__items-image">
              <img src="./image/image_1.png" alt="" />
            </div>
            <div class="cart__items-content">
              <h3>GIÀY BÓNG ĐÁ SÂN CỎ TỰ NHIÊN KHÔNG DÂY X SPEEDFLOW.3</h3>
              <span>Size : 39</span>
              <p>Color: Core Black/Sonic Ink / Solar Yellow</p>
              <span>Quantity: </span>
              <button class="pd-1">-</button>
              <span>1</span>
              <button class="pd-1">+</button>
              <button class="pd-1">Delete</button>
              <p>Price: 4.800.000đ</p>
            </div>
          </div>
          <div class="wrapper">
            <div class="cart__items-image">
              <img src="./image/image_1.png" alt="" />
            </div>
            <div class="cart__items-content">
              <h3>GIÀY BÓNG ĐÁ SÂN CỎ TỰ NHIÊN KHÔNG DÂY X SPEEDFLOW.3</h3>
              <span>Size : 39</span>
              <p>Color: Core Black/Sonic Ink / Solar Yellow</p>
              <span>Quantity: </span>
              <button class="pd-1">-</button>
              <span>1</span>
              <button class="pd-1">+</button>
              <button class="pd-1">Delete</button>
              <p>Price: 4.800.000đ</p>
            </div>
          </div> -->
        </div>
        <div class="cart__recap">
          <!--<h2>Recap</h2>
          <p>3 prodcuts: 7.200.000đ</p>
          <p>Shipping: Freeship</p>
          <p>Total: 7.200.000đ</p>
          <button class="btn-main">Proceed to checkout</button>-->
        </div>
      </div>
    </div>
    <script>
      const cartItemHTML = "<%= Session["renCartItems"]%>"
    </script>
    <script
      src="./asset/js/giohang.js"
      language="javascript"
      type="text/javascript"
    ></script>
  </body>
</html>
