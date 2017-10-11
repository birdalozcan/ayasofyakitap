<%@page import="com.ayasofya.adminGiris.Kategori"%>
<%@page import="com.ayasofya.adminGiris.Product"%>
<%@page import="com.ayasofya.adminGiris.daoProduct"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>




<% ArrayList<String> liste = new ArrayList<String>(); 
	int toplam = 0;
%>
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
<script type="text/javascript">
	var fiyat = 0;
	function addproduct(price) {
		fiyat = fiyat + price;
		alert(fiyat);
		<%
		
			try {
				liste = (ArrayList<String>)session.getAttribute("box");
				
				session.setAttribute("box", liste);
			} catch (Exception e) {
				
			}
		%>
	}
</script>



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
			if (userName == null)
				response.sendRedirect("girisKontrol.jsp");
				daoProduct dao = new daoProduct();
				
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
        <li>Hosgeldin, <a href=""> <%=userName %></a></li>
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
      
      
      <div class="title_box">Günün Urünü</div>
      <div class="border_box">
        <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
        <div class="product_img"><a href="details.html"><img src="images/laptop.png" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
      </div>
      
     
    
    </div>
    <!-- end of left content -->
    
    
    
    
    
    <div class="center_content">
      
      <div class="center_title_bar">Üyelik Bilgilerim</div>
      
      
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        
        
        <div class="center_prod_box_big">
        
        
         
         <%          
           
           String driver = "com.mysql.jdbc.Driver";
           Class.forName(driver).newInstance();

           String url = "jdbc:mysql://localhost:3306/ayasofyakitap?user=root&password=root";

           Connection con = null;
           ResultSet rst = null;
           Statement stmt = null;

            try {
                          
            con = DriverManager.getConnection(url);
            stmt = con.createStatement();
            String sql="SELECT * FROM uyeler WHERE email= '" + userName + "' ";
            rst = stmt.executeQuery(sql);


         while (rst.next()) {//ne kadar kayıt varsa bir sonrakine gec anlamaında

                %>
         
         
         
         
         <center>
       <form action="profilduzenle.jsp" method="post">
          <table border="0" width="100%">
         	<tr>
         		<td align="left" style="font-size:18px;">Adi:</td>
         		<td align="left"><input type="text" value="<%= rst.getString("uyeadi") %>" name="adi" /></td>
         	</tr>
         
         	<tr>
         		<td align="left" style="font-size:18px;">Soyadi: </td>
         		<td align="left"><input type="text" value="<%= rst.getString("uyesoyadi") %>" name="soyadi" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Email: </td>
         		<td align="left"><input type="text" value="<%= rst.getString("email") %>" name="email" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Dogum Tarihi: </td>
         		<td align="left"><input type="text" value="<%= rst.getString("dogum_tarihi") %>" name="dogumtarihi" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Cinsiyet: </td>	
         		<td align="left"><input type="text" value="<%= rst.getString("cinsiyet") %>" name="cinsiyet" />
         		</td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Adres: </td>	
         		<td align="left"><input type="text" value="<%= rst.getString("adres") %>" name="adres" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Sehir: </td>	
         		<td align="left"><input type="text" value="<%= rst.getString("sehir_id") %>" name="sehir" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Cep Telefonu: </td>
         		<td align="left"><input type="text" value="<%= rst.getString("ceptelefonu") %>" name="ceptelefonu" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Ev Telefonu: </td>
         		<td align="left"><input type="text" value="<%= rst.getString("evtelefonu") %>" name="evtelefonu" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left" style="font-size:18px;">Sifre: </td>
         		<td align="left"><input type="text" value="<%= rst.getString("sifre") %>" name="sifre" /></td>
         	</tr>
         	<tr>
         	 <td align="left">&nbsp;</td>
         	 <td align="left"><input  type="submit"  value="Kaydet"/></td>
            </tr>
         </table>
         <br/>
         </form>
         <%
                       }
                       rst.close();
                       stmt.close();
                        con.close();

                       } catch (Exception e) {
                            System.out.println(e.getMessage());
                       }
            %>
         </center>
         
         
         
         
         
        </div>
        
        
        <div class="bottom_prod_box_big"></div>
      </div>
      
      
      
    
      
     
      
    </div>
    <!-- end of center content -->
    <div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title">Alisveri Sepeti</div>
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
