<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs"
Inherits="BTLWEBBANHANG.giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <link href="asset/css/home.css" rel="stylesheet" type="text/css" />
    <link
      rel="stylesheet"
      runat="server"
      media="screen"
      href="./asset/css/cart.css"
    />

    <link
      type="text/css"
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
    <title>Your cart</title>
  </head>
  <body>
    <div class="header">
      <div class="header-logo">
        <img src="asset/image/home/logo-thoi-trang(1).jpg" />
      </div>
      <div class="headerMid-menu-left">
        <ul class="headerMid-menu-left_list">
          <li class="headerMid-menu-left_list_items">
            <a href="trangchu.aspx"><p>Trang chủ</p></a>
          </li>
          <li class="headerMid-menu-left_list_items">
            <p>Thời trang nam</p>
          </li>
          <li class="headerMid-menu-left_list_items">
            <p>Thời trang nữ</p>
          </li>
          <li class="headerMid-menu-left_list_items">
            <p>Phụ kiện</p>
          </li>
          <li class="headerMid-menu-left_list_items">
            <p>Tin tức</p>
          </li>
          <li class="headerMid-menu-left_list_items">
            <p>Giới thiệu</p>
          </li>
        </ul>
      </div>
      <div class="headerMid-menu-right">
        <div class="search_box">
          <div class="search_form">
            <input
              type="text"
              class="input_search"
              name=""
              id=""
              placeholder="Search..."
            />
            <button class="btn_search"><i class="fas fa-search"></i></button>
          </div>
        </div>
        <div class="list-icon">
          <i class="far fa-heart" aria-hidden="true"></i>
          <i class="far fa-user"></i>
          <!-- <div id="accounts" class="accounts">
            <div id="f1" runat="server">
              <%-- <a id="tt-login" href="Account.aspx?method=0">Đăng nhập</a>
              <br />
              <a id="tt-signup" href="Account.aspx?method=1">Đăng kí</a>--%>
            </div>
            <div id="f2" runat="server">
              <%-- Tài khoản:
              <a id="accLogin" href="Account.aspx?method=0" runat="server"
                >abc</a
              >
              <br />
              <button class="btn-Logup">Đăng xuất</button>--%>
            </div>
          </div> -->
          <a href="giohang.aspx"><i class="fas fa-shopping-bag"></i></a>
          <p id="numberItems" class="number-items" runat="server"></p>
          <div class="cart" id="cart-home">
            <%--
            <h5>Sản phẩm đã chọn</h5>
            --%>
            <div id="cartlistItems" runat="server"></div>
            <div
              class="cart-container-button"
              id="cartIconButton"
              runat="server"
            >
              <div id="allMoney" runat="server"></div>
              <%--<button
                id="btnPay"
                onclick="document.location.href='Cart.aspx';"
                runat="server"
              >
                Thanh Toán</button
              >--%>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <h1>Your Cart</h1>
      <div class="cart__content">
        <div class="cart__items"></div>
        <div class="cart__recap"></div>
      </div>
    </div>

    <div class="footer">
      <div class="footer-left">
        <p class="text-col">THƯƠNG HIỆU THỜI TRANG ALTV</p>
        <p class="conten-col">Hotline: 0943380376</p>
        <p class="conten-col">Email: ALTV@gmail.com</p>
        <p class="conten-col">Địa chỉ</p>
        <p class="conten-col">CN1: 90 Định Công, Hoàng Mai, Hà Nội</p>
        <p class="conten-col">CN2: 151 Nguyễn Hiền, Hai Bà Trưng, Hà Nội</p>
      </div>
      <div class="footer-between">
        <P class="text-col">VỀ CHÚNG TÔI</P>
        <p class="conten-col">Giới thiệu</p>
        <p class="conten-col">Liên hệ</p>
        <p class="conten-col">Tuyển dụng</p>
        <p class="conten-col">Tin tức ALTV</p>
      </div>
      <div class="footer-right">
        <p class="text-col">KẾT NỐI VỚI ALTV</p>
        <i class="fab fa-facebook"></i>
        <i class="fab fa-twitter"></i>
        <i class="fab fa-skype"></i>
        <i class="fab fa-instagram"></i>
        <p class="conten-col">Đăng kí nhận tin</p>
        <input id="txtEmails" type="text" placeholder="Email của bạn" />
        <button id="btnDks">Đăng kí</button>
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
        if (+itemQuantity.innerHTML === 1) {
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
