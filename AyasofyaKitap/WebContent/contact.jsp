<%@page import="java.util.ArrayList"%>
<%@page import="com.ayasofya.adminGiris.Kategori"%>
<%@page import="com.ayasofya.adminGiris.Product"%>
<%@page import="com.ayasofya.adminGiris.daoProduct"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ayasofya Kitap</title>

<link rel="stylesheet" href="assets/styles/reset.css" type="text/css" />
<link rel="stylesheet" href="assets/styles/custom.css" type="text/css" />
<!-- Scripts -->
<script type="text/javascript" src="assets/scripts/jquery.min.js"></script>
<script type="text/javascript" src="assets/scripts/custom.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
<%
			String userName = null;
			Cookie[] cookies = request.getCookies();
			if(cookies !=null){
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("user")) userName = cookie.getValue();
			}
			}
			if(userName == null) 
				response.sendRedirect("girisKontrol.jsp");
			
			daoProduct dao = new daoProduct();
			
			ArrayList<Product> listgun = new ArrayList<Product>();
			listgun = dao.queryproductgun();
			
			
			ArrayList<Product> listproduct = new ArrayList<Product>();
			listproduct = dao.queryproduct();
			
			ArrayList<Kategori> listkategori = new ArrayList<Kategori>();
			listkategori = dao.querykategori();
		%>


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
				<div class="top_divider">
					<img src="images/header_divider.png" alt="" width="1" height="164" />
				</div>
    
    
     <sql:setDataSource var="veriKaynagi" 
                               driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost/ayasofyakitap"
                               user="root"  
                               password="root"/>
                       
	        <sql:query dataSource="${veriKaynagi}" var="sorgu">
	                 SELECT * FROM sliders WHERE sliders_aktiflik=1 ORDER BY sliders_sirasi DESC;
	        </sql:query>
			
			
			
				
				
				<!-- SLİDER BASLANGIC -->
			<div class="oferta">
				<div class="slider_generic" style="width: 538px;height: 160px;">
				<!-- slider -->
				<div class="slider" style="width: 520px;height: 145px;margin-top: 8px;">
				<ul>
				 <c:forEach var="satir" items="${sorgu.rows}">
	
				<li><a href=""><img src="assets/images/${satir.sliders_resim}" width="520" height="150" alt="../" /></a></li>
				
				</c:forEach>
				
				
				</ul>
				</div><!-- slider -->
				<!-- slider_swap -->
				<div class="slider_swap">
				<ul>
				<li></li>
				<li></li>
				<li></li>
				</ul>
				</div><!-- slider_swap -->
				</div><!-- slider_generic -->
			</div>
				<!-- SLİDER SONU -->
    
    
    
    
    <!-- end of oferte_content-->
  </div>
  <div id="main_content">
    <div id="menu_tab">
      <div class="left_menu_corner"></div>
      <ul class="menu">
         <li><a href="index.jsp" class="nav1">Anasayfa</a></li>
        
        <li class="divider"></li>
        <li><a href="#" class="nav4">Hesabim</a></li>
        
        <li class="divider"></li>
        <li><a href="#" class="nav5">Cok Satanlar</a></li>
        <li class="divider"></li>
        <li><a href="contact.jsp" class="nav6">Iletisim</a></li>
        <li class="divider"></li>
        <li>Hosgeldin, <a href="hesabim.jsp"> <%=userName %></a></li>
        <li class="divider"></li>
        <li><a href="giris.jsp" class="nav2">Cikis Yap</a></li>
        
      </ul>
      <div class="right_menu_corner"></div>
    </div>
    <!-- end of menu tab -->
    
    <div class="left_content">
      
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
				<% for (int i=0; i<listgun.size(); i++) { %>
				<div class="border_box">
					<div class="product_title">
						<%=listgun.get(i).getUrunadi() %>
					</div>
					<div class="product_img">
						<a href="details.jsp?uruninfo=<%=listgun.get(i).getUrunid()%>"><img width="150" height="150" src="images/<%=listgun.get(i).getUrunresmi() %>" alt=""
										border="0" /></a>
					</div>
					<div class="prod_price">
						<span class="reduce"><%=listgun.get(i).getUrunetiketfiyati()+" "+listgun.get(i).getUrunparabirimi() %></span> <span class="price"><%=listgun.get(i).getUrunindirimlifiyati()+" "+listgun.get(i).getUrunparabirimi() %></span>
					</div>
				</div>
				<% } %>
      
      
      
      
      
      
    </div>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">Kurum Bilgileri</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          
          
          <%          
           
           String driver = "com.mysql.jdbc.Driver";
           Class.forName(driver).newInstance();

           String url2 = "jdbc:mysql://localhost:3306/ayasofyakitap?user=root&password=root";

           Connection con2 = null;
           ResultSet rst2 = null;
           Statement stmt2 = null;

            try {
                          
            con2 = DriverManager.getConnection(url2);
            stmt2 = con2.createStatement();
            String sql="SELECT * FROM kurumbilgileri WHERE aktif=1 ";
            rst2 = stmt2.executeQuery(sql);


         while (rst2.next()) {//ne kadar kayıt varsa bir sonrakine gec anlamaında

                %>
          
          
          
          
          
           <table>
          <div class="contact_form">
         
           
             <tr> <td align="left" style="font-size:20px;font-family: fantasy;">Kurum Adi :  </td>
                 <td align="left" style="font-size:15px;"><%= rst2.getString("kurum_adi") %>  </td>
             </tr>
           
            
             <tr> <td align="left" style="font-size:20px;font-family: fantasy;">Email  :  </td>
                  <td align="left" style="font-size:15px;"><%= rst2.getString("email") %></td>
              
             </tr> 
            
               <tr> <td align="left" style="font-size:20px;font-family: fantasy;">Telefon : </td>
                    <td align="left" style="font-size:15px;"><%= rst2.getString("telefon") %></td>
               
               </tr>
            
              <tr>
                <td align="left" style="font-size:20px;font-family: fantasy;">Adres :  </td>
                <td align="left" style="font-size:15px;">  <%= rst2.getString("adres") %> </td>
              </tr>
            
              <tr>
                 <td align="left" style="font-size:20px;font-family: fantasy;">Fax : </td>
                 <td align="left" style="font-size:15px;"><%= rst2.getString("fax") %></td>
              </tr>  
          
          
           </table>
          
           <%
                       }
                       rst2.close();
                       stmt2.close();
                        con2.close();

                       } catch (Exception e) {
                            //System.out.println(e.getMessage());
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
