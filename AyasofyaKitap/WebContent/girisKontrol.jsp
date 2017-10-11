<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>

<%@page import="Veritabani.Giris"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ayasofya Kitap</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
<div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="#">Gelismis Arama</a></div>
      <input type="text" class="search_input" name="search" />
      <input type="image" src="images/search.gif" class="search_bt"/>
    </div>
    
   
      
  </div>
  <div id="header">
    <div id="logo"> <a href="#"><img src="images/logo.png" alt="" border="0" width="237" height="140" /></a> </div>
    <div class="oferte_content">
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
      <div class="oferta">
        <div class="oferta_content"> <img src="images/laptop.png" width="94" height="92" alt="" border="0" class="oferta_img" />
          <div class="oferta_details">
            <div class="oferta_title">Samsung GX 2004 LM</div>
            <div class="oferta_text"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco </div>
            <a href="details.html" class="details">details</a> </div>
        </div>
        <div class="oferta_pagination"> <span class="current">1</span> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> </div>
      </div>
      <div class="top_divider"><img src="images/header_divider.png" alt="" width="1" height="164" /></div>
    </div>
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
         <li><a href="index.jsp" class="nav1">Anasayfa</a></li>
        <li class="divider"></li>
        <li><a href="#" class="nav2">Urunler</a></li>
        <li class="divider"></li>
        <li><a href="#" class="nav3">Kampanyanlar</a></li>
        <li class="divider"></li>
        <li><a href="#" class="nav4">Hesabim</a></li>
        <li class="divider"></li>
        <li><a href="giris.jsp" class="nav4">Giris</a></li>
        <li class="divider"></li>
        <li><a href="#" class="nav5">Cok Satanlar</a></li>
        <li class="divider"></li>
        <li><a href="contact.jsp" class="nav6">Iletisim</a></li>
        <li class="divider"></li>
        
        
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
    <div class="left_content">
      <div class="title_box">Kategoriler</div>
      <ul class="left_menu">
        <li class="odd"><a href="#">Processors</a></li>
        <li class="even"><a href="#">Motherboards</a></li>
        <li class="odd"><a href="#">Desktops</a></li>
        <li class="even"><a href="#">Laptops &amp; Notebooks</a></li>
        <li class="odd"><a href="#">Processors</a></li>
        <li class="even"><a href="#">Motherboards</a></li>
        <li class="odd"><a href="#">Processors</a></li>
        <li class="even"><a href="#">Motherboards</a></li>
        <li class="odd"><a href="#">Desktops</a></li>
        <li class="even"><a href="#">Laptops &amp; Notebooks</a></li>
        <li class="odd"><a href="#">Processors</a></li>
        <li class="even"><a href="#">Motherboards</a></li>
      </ul>
      <div class="title_box">Kampanyali Urunler</div>
      <div class="border_box">
        <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
        <div class="product_img"><a href="details.html"><img src="images/laptop.png" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
      </div>
      <div class="title_box">Newsletter</div>
      <div class="border_box">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="#" class="join">join</a> </div>
      <div class="banner_adds"> <a href="#"><img src="images/bann2.jpg" alt="" border="0" /></a> </div>
    </div>
    <!-- end of left content -->
    
    
    
    
    
    <div class="center_content">
      
      <div class="center_title_bar">Uye Giris Formu</div>
      
      
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        
        
        <div class="center_prod_box_big">
        
        <!-- BURADA KONTROLUNU YAP GİRİSİN -->
         <%!String ad, parola;
           
         %>


					<%
					Giris	girKontNes = new Giris();

						//index.jsp den gelend egerleri alir

						ad = request.getParameter("email");

						parola = request.getParameter("sifre");
					%>

					<%
						//Eger ad ve parola sistemde kayitli ise ona ait bir session olusturur.

						//Oturuma isim uye ve degeri de 1 dir.setAttribute(String name, Object value)

						//Uyeye ait oturum ve deger attiktan sonra AnaSayfa.jsp ye gonderir.

						if (girKontNes.uyeKayKontrol(ad, parola))

						{

							Cookie loginCookie = new Cookie("user",ad);
							//setting cookie to expiry in 30 mins
				            loginCookie.setMaxAge(30*60);
				            response.addCookie(loginCookie);
				            
							HttpSession oturum = request.getSession(true);
							oturum.setAttribute("uye", 1);

							response.sendRedirect("index.jsp");

						} else {

							//Eger uye kayitli degilse sisteme uyeliginiz yok seklinde yazi gelir.Herhangi

							//bir yere yonlendirmedim.Bu ornekte amac session oluturma ve kontrol etmektir.
			
							out.println("<a>Sisteme uyeliginiz yok.</a>");
							response.sendRedirect("giris.jsp");
						}
				%>
      
         
         
         
        </div>
        
        
        <div class="bottom_prod_box_big"></div>
      </div>
      
      
      
    
      
     
      
    </div>
    <!-- end of center content -->
    <div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details"> 3 items <br />
          <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
        <div class="cart_icon"><a href="#" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      <div class="title_box">Whats new</div>
      <div class="border_box">
        <div class="product_title">Motorola 156 MX-VL</div>
        <div class="product_img"><a href="#"><img src="images/p2.gif" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
      </div>
      <div class="title_box">Manufacturers</div>
      <ul class="left_menu">
        <li class="odd"><a href="#">Sony</a></li>
        <li class="even"><a href="#">Samsung</a></li>
        <li class="odd"><a href="#">Daewoo</a></li>
        <li class="even"><a href="#">LG</a></li>
        <li class="odd"><a href="#">Fujitsu Siemens</a></li>
        <li class="even"><a href="#">Motorola</a></li>
        <li class="odd"><a href="#">Phillips</a></li>
        <li class="even"><a href="#">Beko</a></li>
      </ul>
      <div class="banner_adds"> <a href="#"><img src="images/bann1.jpg" alt="" border="0" /></a> </div>
    </div>
    <!-- end of right content -->
  </div>
  <!-- end of main content -->
  <div class="footer">
    <div class="left_footer"> <img src="images/footer_logo.png" alt="" width="170" height="49"/> </div>
    <div class="center_footer"> Template name. All Rights Reserved 2008<br />
      <a href="http://csscreme.com"><img src="images/csscreme.jpg" alt="csscreme" border="0" /></a><br />
      <img src="images/payment.gif" alt="" /> </div>
    <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="contact.html">contact us</a> </div>
  </div>
</div>
<!-- end of main_container -->
</body>
</html>
