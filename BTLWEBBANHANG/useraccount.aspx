<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useraccount.aspx.cs" Inherits="BTLWEBBANHANG.useraccount" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    
    
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <script language="javascript">


</script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
    <style>--%>
    <link href="asset/css/home.css" rel="stylesheet" type="text/css" />

    <link href="asset/css/useraccount.css" rel="stylesheet" type="text/css" />
    <link
      type="text/css"
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
    <title>Đăng nhập / Đăng ký</title>
</head>
<body >
    <div class="header">
      <div class="header-logo">
        <img src="asset/image/home/logo-thoi-trang(1).jpg" />
      </div>
      <div class="headerMid-menu-left">
        <ul class="headerMid-menu-left_list">
          <li class="headerMid-menu-left_list_items">
            <a href="trangchu.aspx"><p>Trang chủ</p></a>
          </li>
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
          <a href="useraccount.aspx"><i class="far fa-user" ></i></a>
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
               <form class="form-login" action="useraccount.aspx" method="post">
                   <h2 class="form-tt">Đăng Nhập</h2>
                   <p class="form-child-tt">Nếu bạn đã có tài khoản, hãy đăng nhập để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn!</p>
                   <label for="txtLoginUser" class="form-label">Email:</label>
                   <br />
                   <input type="text" id="txtLoginEmail" name="inputTenDN" placeholder="Email" class="form-input" />
                   <br />
                   <br />
                    <label for="txtLoginPass" class="form-label">Mật khẩu:</label>
                   <br />
                   <input type="text" id="txtLoginPass" name="inputPassword" placeholder="Mật khẩu" class="form-input"/>
                   <br />

                   <br />
                   <button type="submit" class="form-btn">ĐĂNG NHẬP</button>
               </form>
               <form class="form-signup" action="useraccount.aspx" method="post">
                   <h2 class="form-tt">Đăng Ký</h2>
                    <p class="form-child-tt">Hãy đăng ký ngay để tích lũy điểm thành viên và nhận được những ưu đãi tốt hơn từ chúng tôi!</p>
                    <label for="txtSignUpEmail" class="form-label">Email:</label>
                   <br />
                   <input type="text" id="txtSignUpEmail" name="gmaildangky" placeholder="Email" class="form-input" />
                   <br />

                 

                   <br />
                    <label for="txtSignUpPass" class="form-label">Mật khẩu:</label>
                   <br />
                   <input type="text" id="txtSignUpPass1" name="mkDK1" placeholder="Mật khẩu" class="form-input"/>
                   <br />
                  
                    <label for="txtSignUpPass" class="form-label">Nhập lại mật khẩu:</label>
                   <br />
                   <input type="text" id="txtSignUpPass2" name="mkDK2" placeholder="Nhập lại mật khẩu" class="form-input"/>
                   <br />
                   <br />
                   <button type="submit" class="form-btn">ĐĂNG KÝ</button>
                   <br/>
               </form>
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
    <script>
        function getCookie(name) {
            const value = `${document.cookie}`;
            const parts = value.split(`${name}=`);
            if (parts.length == 2) return parts[1];

        }
        console.log(getCookie("userCookie"));
        if (getCookie("userCookie") != undefined) {
            //alert("chao mung " + getCookie("userCookie"));
            //window.location.href = "trangchu.aspx";
        } else {

        }
        function hamdangky() {
            //window.location.href = "Account.aspx?gmaildangky=";
        }
   </script>
</html>

