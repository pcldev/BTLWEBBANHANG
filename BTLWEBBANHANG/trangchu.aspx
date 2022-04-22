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
            <p>Trang chủ</p>
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
          <i class="far fa-user" onclick="AccountClick()"></i>
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
      <div class="text-top">
        <b> Top Bán Chạy</b>
        <hr />
      </div>
      <div class="list-banchay">
        <div class="list-banchay-img" id="topbanchay" runat="server">
          <%--
          <div class="all">
            <img src="asset/image/home/nam1.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">ÁO NGẮN TAY</p>
              <span class="list-banchay-gia"><strike>200.000</strike></span>
              <span class="list-banchay-giamoi">150.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them" id="themgiohang">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nam2.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">BỘ ĐỒ NAM</p>
              <span class="list-banchay-gia"><strike>350.000</strike></span>
              <span class="list-banchay-giamoi">2500.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them" id="themgiohang1">
              Thêm vào giỏ hàng
            </button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu1.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">VÁY XINH</p>
              <span class="list-banchay-gia"><strike>200.000</strike></span>
              <span class="list-banchay-giamoi">100.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them" id="themgiohang2">
              Thêm vào giỏ hàng
            </button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu11.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">KẸP TÓC HÀN QUỐC</p>
              <span class="list-banchay-gia"><strike>30.000</strike></span>
              <span class="list-banchay-giamoi">10.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them" id="themgiohang3">
              Thêm vào giỏ hàng
            </button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu12.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">TÚI XÁCH TRẮNG XINH</p>
              <span class="list-banchay-gia"><strike>200.000</strike></span>
              <span class="list-banchay-giamoi">99.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu9.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">ÁO PHÔNG CUTE</p>
              <span class="list-banchay-gia"><strike>150.000</strike></span>
              <span class="list-banchay-giamoi">99.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu3.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">ÁO SƠ MI ĐẸP</p>
              <span class="list-banchay-gia"><strike>200.000</strike></span>
              <span class="list-banchay-giamoi">150.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu13.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">TÚI XÁCH ĐẸP</p>
              <span class="list-banchay-gia"><strike>400.000</strike></span>
              <span class="list-banchay-giamoi">380.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nam6.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">ĐỒNG HỒ SANG TRỌNG</p>
              <span class="list-banchay-gia"><strike>800.000</strike></span>
              <span class="list-banchay-giamoi">750.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nu10.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">BÔNG TAI XỎ MẠ BẠC</p>
              <span class="list-banchay-gia"><strike>13.000</strike></span>
              <span class="list-banchay-giamoi">7.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nam7.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">KẸP CAVAT NAM</p>
              <span class="list-banchay-gia"><strike>198.000</strike></span>
              <span class="list-banchay-giamoi">170.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          <div class="all">
            <img src="asset/image/home/nam4.JPG" class="img" />
            <div class="list-banchay-text">
              <p class="tensp">QUẦN VẢI VETTION</p>
              <span class="list-banchay-gia"><strike>140.000</strike></span>
              <span class="list-banchay-giamoi">99.000</span>
              <i class="far fa-heart"></i>
            </div>
            <button class="btn-them">Thêm vào giỏ hàng</button>
          </div>
          --%>
        </div>
      </div>
    </div>
    <div class="hangmoive">
      <div class="conten-next">
        <p class="hangmoive-text">Hàng mới về</p>
        <hr />
      </div>
      <div class="hangmoive-item">
        <div class="col1">
          <p class="col1-text">Thời trang nam</p>
          <div class="col1-item">
            <img src="asset/image/home/nam5.JPG" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Quần tây sang trọng</p>
              <p class="col1-right-gia">300.000</p>
            </div>
          </div>
          <hr />
          <div class="col1-item">
            <img src="asset/image/home/nam12.jpg" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Áo phông nam đẹp</p>
              <p class="col1-right-gia">150.000</p>
            </div>
          </div>
          <hr />
          <div class="col1-item">
            <img src="asset/image/home/nam10.jpg" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Bộ quần áo trẻ trung</p>
              <p class="col1-right-gia">650.000</p>
            </div>
          </div>
          <hr />
        </div>
        <div class="col1">
          <p class="col1-text">Thời trang nữ</p>
          <div class="col1-item">
            <img src="asset/image/home/nu2.JPG" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Áo phông giấy nữ mát mẻ</p>
              <p class="col1-right-gia">80.000</p>
            </div>
          </div>
          <hr />
          <div class="col1-item">
            <img src="asset/image/home/nu4.JPG" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Áo phông freesize</p>
              <p class="col1-right-gia">120.000</p>
            </div>
          </div>
          <hr />
          <div class="col1-item">
            <img src="asset/image/home/nu7.JPG" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Áo phông Hàn Quốc</p>
              <p class="col1-right-gia">150.000</p>
            </div>
          </div>
          <hr />
        </div>
        <div class="col1">
          <p class="col1-text">Phụ kiện nam nữ</p>

          <div class="col1-item">
            <img src="asset/image/home/pk1.jpg" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Vòng cổ bạc nam</p>
              <p class="col1-right-gia">210.000</p>
            </div>
          </div>
          <hr />
          <div class="col1-item">
            <img src="asset/image/home/pk2.jpg" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Phụ kiện cài áo sang trọng</p>
              <p class="col1-right-gia">300.000</p>
            </div>
          </div>
          <hr />
          <div class="col1-item">
            <img src="asset/image/home/pk3.jpg" class="col1-img" />
            <div class="col1-right">
              <p class="col1-right-text">Thắt lưng da cá sấu</p>
              <p class="col1-right-gia">740.000</p>
            </div>
          </div>
          <hr />
        </div>
      </div>
    </div>
    <div class="xemthem">
      <button class="btn-xemthem">Xem Thêm</button>
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
               }]));
             }
          
      };
    </script>
  </body>
</html>
