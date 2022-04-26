<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs"
Inherits="BTLWEBBANHANG.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <link href="asset/css/home.css" rel="stylesheet" type="text/css" />

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
          <!-- <li class="headerMid-menu-left_list_items">
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
          </li> -->
        </ul>
      </div>
      <div class="headerMid-menu-right">
        <div class="search_box">
          <div class="search_form">
            <!-- <input
              type="text" class="input_search" name="" id="" placeholder="Search..."/>
            <button class="btn_search"><i class="fas fa-search"></i></button> -->
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
          <a href="giohang.aspx"><i class="fas fa-shopping-bag" "></i></a>
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
    <div class="banner">
      <img src="asset/image/home/banner-dam-1536x568.png" />
    </div>
    <div class="conten">
      <div class="conten-right">
        <img src="asset/image/home/istockphoto-1146961321-1024x1024.jpg" />
      </div>
      <div class="conten-left">
        <div class="conten-left-top">
          <p class="text">Thời trang nữ</p>
          <img src="asset/image/home/2380496801_143247485.400x400.jpg" />
        </div>
        <div class="conten-left-bottom">
          <p class="text">Thời trang nam</p>
          <img src="asset/image/home/thoi-trang-nam-elle-man.png" />
        </div>
      </div>
    </div>
    <div class="topbanchay">
      <!-- <button onclick="sortPriceIncrement()" >Sắp xếp theo giá tăng dần</button>
      <button onclick="sortPriceDecrement()">Sắp xếp theo giá giảm dần</button> -->

        <!-- <label for="">Giá thứ nhất</label>
        <input type="number" name="giathunhat" id="giathunhat" placeholder="Nhập giá thứ nhất" required="required"/>
        <br/>
        <label for="">Giá thứ hai</label>
        <input type="number" name="giathunhat" id="giathuhai" placeholder="Nhập giá thứ hai" required="required"/>

        <button onclick ="locsanphamtheogia()"  >Tìm</button> -->


        <div class="text-top">
        <b> Top Bán Chạy</b>
        <hr />
      </div>
      <div class="list-banchay">
        <div class="list-banchay-img" id="topbanchay" runat="server">

        </div>
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
      //Gan noi dung tu session
      var cartItemHTML = "<%= Session["renHomePage"]%>"
      var topbanchay = document.getElementById('topbanchay')

      topbanchay.innerHTML = cartItemHTML;

      //Xu ly them vao gio hang
        function themgiohang(thisBTN) {

            alert("oke");
           let listCart = []
           listCart = JSON.parse(localStorage.getItem("cart"))
          if (listCart) {
               console.log('Exist')
               listCart.push({
                   id: +thisBTN.dataset.id,
                   name: thisBTN.dataset.name,
                   description: thisBTN.dataset.description,
                   image: thisBTN.dataset.image,
                   type: thisBTN.dataset.type,
                   price: +thisBTN.dataset.price,
                   quantity:1
               })
              // Dấu + ở đằng trước là một cách để ép nó về kiểu number
              localStorage.setItem("cart", JSON.stringify(listCart))
          } else {
              console.log(' No Exist')
               localStorage.setItem("cart", JSON.stringify([{
                   id: +thisBTN.dataset.id,
                   name: thisBTN.dataset.name,
                   description: thisBTN.dataset.description,
                   image: thisBTN.dataset.image,
                   type: thisBTN.dataset.type,
                   price: +thisBTN.dataset.price,
                   quantity:1
               }]));
             }

      };

        function sortPriceDecrement(){
          window.location.href = "trangchu.aspx?sort=0"
        }

        function sortPriceIncrement(){
          window.location.href = "trangchu.aspx?sort=1"
        }

        function locsanphamtheogia(){
          const giathunhat = document.getElementById("giathunhat")
          const giathuhai = document.getElementById("giathuhai")

          if(giathunhat.value == '' || giathuhai.value == ''){
            alert('Vui lòng nhập đầy đủ cả 2 giá tiền')
          }else if(giathunhat.value > giathuhai.value){
            alert("Giá thứ hai phải lớn hơn giá thứ nhất")
          }else{
            window.location.href = "trangchu.aspx?price1=" + giathunhat.value +"&price2=" + giathuhai.value

          }

        }

    </script>
  </body>
</html>
