<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="BTLWEBBANHANG.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="asset/css/home.css" rel="stylesheet" type="text/css"/>
    
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
</head>
<body>
     <div class="header">
        <div class="header-logo">
            <img src="asset/image/home/logo-thoi-trang(1).jpg" />
        </div>
        <div class="headerMid-menu-left">
             <ul class="headerMid-menu-left_list">
                <li class="headerMid-menu-left_list_items">
                   <p >Trang chủ</p>
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
                   <p> Giới thiệu</p>
                </li>
                
            </ul>
        </div>
        <div class="headerMid-menu-right">  
            <div class="search_box">
                <div class="search_form">
                    <input type="text"
                    class="input_search" name="" id=""placeholder="Search..."/>
                  <button class="btn_search" ><i class="fas fa-search"></i></button>
                </div>           
            </div>
            <div class="list-icon">
                <i class="far fa-heart" aria-hidden="true"></i>
                <i class="far fa-user" onclick="AccountClick()"></i>
                <div id="accounts" class="accounts">
                   <div id ="f1" runat="server">
                       <%-- <a id="tt-login" href="Account.aspx?method=0">Đăng nhập</a>
                        <br />
                        <a id="tt-signup" href="Account.aspx?method=1">Đăng kí</a>--%>
                   </div>
                    <div id ="f2" runat="server">
                       <%-- Tài khoản: <a id="accLogin" href="Account.aspx?method=0" runat="server">abc</a>
                        <br />
                        <button class="btn-Logup">Đăng xuất</button>--%>
                   </div>
                    
                </div>
                <i class="fas fa-shopping-bag" onclick="cartClick();"></i>
                <p id="numberItems" class="number-items" runat="server"></p>
                <div class="cart" id="cart-home">
                   <%-- <h5>Sản phẩm đã chọn</h5>--%>
                    <div id="cartlistItems" runat="server">

                    </div>
                    <div class="cart-container-button" id="cartIconButton" runat="server">
                        <div id="allMoney" runat="server"></div>
                        <%--<button id="btnPay" onclick="document.location.href='Cart.aspx';" runat="server">Thanh Toán</button>--%>
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

                <p class="text">Thời trang nữ </p>
                <img src="asset/image/home/2380496801_143247485.400x400.jpg" />
            </div>
            <div class="conten-left-bottom">
                 <p class="text">Thời trang nam </p>
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
                
            </div>
            
        </div>
    </div>
</body>
</html>
