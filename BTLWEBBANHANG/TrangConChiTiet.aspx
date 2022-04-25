<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangConChiTiet.aspx.cs" Inherits="BTLWEBBANHANG.TrangConChiTiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang con chi tiết</title>
     <link href="asset/css/home.css" rel="stylesheet" type="text/css" />
     <link href="asset/css/TrangConChiTiet.css" rel="stylesheet" type="text/css" />

    <link
      type="text/css"
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
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
              type="text" class="input_search" name="" id="" placeholder="Search..."/>
            <button class="btn_search"><i class="fas fa-search"></i></button>
          </div>
        </div>
        <div class="list-icon">
          <i class="far fa-heart" aria-hidden="true"></i>
          <i class="far fa-user" ></i>
          <div id="accounts" class="accounts">
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
          </div>
          <i class="fas fa-shopping-bag" onclick="cartClick();"></i>
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

    <div class="main-content">
      <div class="img-block">
        <img src="asset/image/home/nam1.JPG" alt="">
      </div>
      <div class="product-detail">
        <h2>Áo nam</h2>
        <p class="price" data-price="50000">500000</p>
        <p>Số lượng</p>

        <button class='smallest-btn-pd btn-change-item ' onclick='onDecrementHandler()'>
          <img src='./asset/items/btnMinus.png' alt='-'></button> 
                    <span class='itemQuantity pd-1 '>1</span>
                    <button class='smallest-btn-pd btn-change-item ' onclick='onIncrementHandler()'><img src='./asset/items/btnplus.png' alt='+'></button>
          
                    <br>
        <button class="btn btn-second big-btn-pd">Thêm vào giỏ hàng</button>
        <br>
        <button class="btn btn-main big-btn-pd mt-1">Mua ngay</button>
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

      function onIncrementHandler() {
        const itemQuantity = document.querySelector(`.itemQuantity`);

        const itemPrice = document.querySelector(`.price`);

        if (+itemQuantity.innerHTML === 11) {
          return;
        } else {
          //window.location.pathname="/IncrementCartItem.aspx"
          itemQuantity.innerHTML = +itemQuantity.innerHTML + 1;
          itemPrice.innerHTML =
            +itemQuantity.innerHTML * +itemPrice.dataset.price;
        }
      }

      function onDecrementHandler() {
        const itemQuantity = document.querySelector(`.itemQuantity`);

        const itemPrice = document.querySelector(`.price`);

        if (+itemQuantity.innerHTML === 1) {
          return;
        } else {
          //window.location.pathname="/IncrementCartItem.aspx"
          itemQuantity.innerHTML = +itemQuantity.innerHTML - 1;
          itemPrice.innerHTML =
            +itemQuantity.innerHTML * +itemPrice.dataset.price;
        }
      }
    </script>
</body>
</html>
