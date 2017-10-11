<%@page import="java.util.ArrayList"%>
<%@page import="com.ayasofya.adminGiris.daoProduct"%>
<%@page import="com.ayasofya.adminGiris.Product"%>
<%@page import="com.ayasofya.adminGiris.Kategori"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ayasofya Kitap</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/windowopen.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>

     <%
		String userName = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user"))
					userName = cookie.getValue();
			}
		}
     %>






<div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="#">Advanced Search</a></div>
      <input type="text" class="search_input" name="search" />
      <input type="image" src="images/search.gif" class="search_bt"/>
    </div>
    <div class="languages">
      <div class="lang_text">Languages:</div>
      <a href="#" class="lang"><img src="images/en.gif" alt="" border="0" /></a> <a href="#" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div>
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
        <li><a href="hesabim.jsp" class="nav4">Hesabim</a></li>
        
        <li class="divider"></li>
        <li><a href="#" class="nav5">Cok Satanlar</a></li>
        <li class="divider"></li>
        <li><a href="contact.jsp" class="nav6">Iletisim</a></li>
        <li class="divider"></li>
        <li>Hosgeldin, <a href=""> <%=userName %></a></li>
        
        
        <li><a href="giris.jsp" class="nav2">Cikis Yap</a></li>
         <li class="divider"></li>
          
      </ul>
      
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    
    <div class="left_content">
    <%
    daoProduct dao = new daoProduct();
    ArrayList<Kategori> listkategori = new ArrayList<Kategori>(); 
    listkategori = dao.querykategori();
    %>
      <div class="title_box">Kategoriler</div>
				<ul class="left_menu">
					<% for(int i=0; i<listkategori.size(); i++) { %>
						<li class="odd"><a href="kategoridetay.jsp?kategoriinfo=<%=listkategori.get(i).getKategoriid()%>"><%=listkategori.get(i).getKategoriadi() %></a></li>
						<% for(int j=0; j<listkategori.get(i).getAltkategori().size(); j++) { %>
							<li class="even"><a href="altkategoridetay.jsp?altkategoriinfo=<%=listkategori.get(i).getAltkategori().get(j).getAltkategoriid()%>"><%=listkategori.get(i).getAltkategori().get(j).getAltkategoriadi() %></a></li>
						<% } %>
					<% } %>
				</ul>
      <div class="title_box">Günün Ürünü</div>
      <div class="border_box">
        <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
        <div class="product_img"><a href="details.html"><img src="images/laptop.png" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
      </div>
      
      
   
    </div>
    <!-- end of left content -->
    <div class="center_content">
      <% 
      	String urunid = (String) request.getParameter("uruninfo");
      	Product product = dao.queryproductid(Integer.parseInt(urunid));
      %>
      
      
     <div class="center_title_bar">  <%=product.getUrunadi() %></div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          <div class="product_img_big"> <a href="javascript:popImage('images/<%=product.getUrunresmi() %>','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]"><img width="150" height="150" src="images/<%=product.getUrunresmi() %>" alt="" border="0" /></a>
            
          </div>
          <div class="details_big_box">
            
            <div class="prod_price_big"><span style="color:Blue;font-weight:bold;">Ürün Kodu : </span> <span class="price"><%=product.getUrunkodu() %></span> </div>
            <div class="product_title_big"><span style="color:Blue;">Ürün Aciklamasi : </span><%=product.getUrunaciklama() %></div>
            <div class="prod_price_big"><span style="color:Blue;font-weight:bold;">Ürün Fiyati : </span><span class="reduce"><%=product.getUrunetiketfiyati() %>&nbsp;TL</span> <span class="price"><%=product.getUrunindirimlifiyati() %>&nbsp;TL</span></div>
           
            <a href="#" class="addtocart">Satın Al</a> </div>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
      
      
    </div>
    <!-- end of center content -->
    <div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title">Alısveris Sepeti</div>
        <div class="cart_details"> 3 items <br />
          <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
        <div class="cart_icon"><a href="#" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      
      
      <sql:setDataSource var="veriKaynagi" 
                               driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost/ayasofyakitap"
                               user="root"  
                               password="root"/>
                       
	        <sql:query dataSource="${veriKaynagi}" var="sorgu">
	                 SELECT * FROM yayinevi;
	        </sql:query>
      
      
      
      <div class="title_box">Yayinevleri</div>
      
      <ul class="left_menu">
         
         <c:forEach var="satir" items="${sorgu.rows}">
        
        	<li class="odd"><a href="#">${satir.yayineviadi}</a></li>
        
        </c:forEach>
      </ul>
     
     
     
     
     
     
    </div>
    <!-- end of right content -->
  </div>
  <!-- end of main content -->
  <div class="footer">
    <div class="left_footer"> <img src="images/footer_logo.png" alt="" width="170" height="49"/> </div>
    <div class="center_footer">Ayasofya Kitap &copy; 2015<br />
     
      <img src="images/payment.gif" alt="" /> </div>
   
  </div>
</div>
<!-- end of main_container -->
</body>
</html>
