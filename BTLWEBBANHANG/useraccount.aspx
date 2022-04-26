<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useraccount.aspx.cs"
Inherits="BTLWEBBANHANG.useraccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <link href="asset/css/home.css" rel="stylesheet" type="text/css" />

    <link href="asset/css/useraccount.css" rel="stylesheet" type="text/css" />
    <link
      type="text/css"
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
    <title>Đăng nhập / Đăng ký</title>
  </head>
  <script language="javascript">

        function cartClick() {
            var cart = document.getElementById("cart-home");
            if (cart.style.display == "none") {
                cart.style.display = "block";
            }
            else {
                cart.style.display = "none";
            }
        }
        function AccountClick() {
            var cart = document.getElementById("accounts");
            if (cart.style.display == "none") {
                cart.style.display = "block";
            }
            else {
                cart.style.display = "none";
            }
        }
        function myFunction() {
            var s = window.location.href;
            var list = document.getElementById("cartlistItems");
            if (s.includes("#")) {
                Swal.fire({
                    width: '30%',
                    position: 'top-end',
                    icon: 'success',
                    title: list.lastChild.innerHTML,
                    showCancelButton: true,
                    showConfirmButton: true,
                    confirmButtonText:
                        '<i class="fa fa-thumbs-up"></i> <a href="Cart.aspx" style="text-decoration:none; color:white;">Xem giỏ hàng!</a>',
                    cancelButtonText:
                        'Tiếp tục mua hàng',
                })
            }
        }
        function SizeColor(obj) {
            var dialog = document.getElementById("dialog");
            dialog.style.display = "block";
            dialog.className = obj.id;
        }
        function addToCart() {
            var dialog = document.getElementById("dialog");
            var id = dialog.className.replace("btnAddToCartx", "");
            var color = document.querySelector('input[name=radioColor]:checked').value;
            var size = document.querySelector('input[name=radioSize]:checked').value;
            window.location.href = "Home.aspx?id=" + id + "&color=" + color + "&size=" + size;
        }
        function closeDialog() {
            var dialog = document.getElementById("dialog");
            dialog.style.display = "none";
        }
        function ht(obj) {
            var x = document.getElementById(obj.id);
             x.innerHTML = "<i class='fas fa-heart' aria-hidden='true' style='color:hotpink;'></i>";
        }
        function showDetail(obj) {
            window.location.href = "Detail.aspx?id=" + obj.parentNode.id;
        }
        function delItems(obj) {
            window.location.href = "Home.aspx?clear=" + obj.id.replace("Clear","");
        }
    </script>
  <body>
<body onload="myFunction()">
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
    </div>
    </div>
        </div>
        <div class="content">
             <h2 id="itemPath" runat="server">Trang chủ/Tài khoản</h2>
           <div class="form">
               <div class="form-login">
                   <h2 class="form-tt">Đăng Nhập</h2>
                   <p class="form-child-tt">Nếu bạn đã có tài khoản, hãy đăng nhập để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn!</p>
                   <label for="txtLoginUser" class="form-label">Email:</label>
                   <br />
                   <input type="text" id="txtLoginEmail" placeholder="Email" class="form-input" />
                   <br />
                   <br />
                    <label for="txtLoginPass" class="form-label">Mật khẩu:</label>
                   <br />
                   <input type="text" id="txtLoginPass" placeholder="Mật khẩu" class="form-input"/>
                   <br />

                   <br />
                   <button class="form-btn">ĐĂNG NHẬP</button>
               </div>
               <div class="form-signup">
                   <h2 class="form-tt">Đăng Ký</h2>
                    <p class="form-child-tt">Hãy đăng ký ngay để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn từ chúng tôi!</p>
                   <!-- <label for="txtSignUpFN" class="form-label">Họ:</label>
                   <br />
                   <input type="text" id="txtSignUpFN" placeholder="Họ" class="form-input" />
                   <br />
                   <br />
                    <label for="txtSignUpLN" class="form-label">Tên:</label>
                   <br />
                   <input type="text" id="txtSignUpLN" placeholder="Tên" class="form-input" /> -->

                    <label for="txtSignUpEmail" class="form-label">Email:</label>
                   <br />
                   <input type="text" id="txtSignUpEmail" placeholder="Email" class="form-input" />
                   <br />

                    <!-- <label for="txtSignUpPhone" class="form-label">Số điện thoại:</label>
                   <br />
                   <input type="text" id="txtSignUpPhone" placeholder="Số điện thoại" class="form-input" /> -->

                   <br />
                    <label for="txtSignUpPass" class="form-label">Mật khẩu:</label>
                   <br />
                   <input type="text" id="txtSignUpPass" placeholder="Mật khẩu" class="form-input"/>
                   <br />
                   <!-- <label for="idSubmitNew" class="form-child-tt"><input type="checkbox" id="idSubmitNew"/> Đăng kí nhận tin</label>
                   <br />
                   <label for="idSubmitRule" class="form-child-tt"><input type="checkbox" id="idSubmitRule"/> Đồng ý với các <a href="#">Điều khoản</a> của T-Store</label> -->
                   <br />
                   <button class="form-btn">ĐĂNG KÝ</button>
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
    </div>
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>
  </body>
</html>
