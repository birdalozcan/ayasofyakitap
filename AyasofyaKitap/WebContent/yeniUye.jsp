<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
      
      <div class="center_title_bar">Uye Kayıt Formu</div>
      
      
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        
        
        <div class="center_prod_box_big">
        
        
         
       <form action="yeniUyeKontrol.jsp" method="post">
          <table border="0" width="100%">
         	<tr>
         		<td align="left">Adi:</td>
         		<td align="left"><input  type="text" name="adi" size="30" /></td>
         	</tr>
         
         	<tr>
         		<td align="left">Soyadi: </td>
         		<td align="left"><input type="text" name="soyadi" size="30" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left">Email: </td>
         		<td align="left"><input type="text" name="email" size="30" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left">Dogum Tarihi: </td>
         		<td align="left"><input style="width:239px; " type="date" name="dogumtarihi" size="30" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left">Cinsiyet: </td>	
         		<td align="left"><input type="radio" name="cinsiyet" value="bayan" size="30" />Bayan
         			<input type="radio" name="cinsiyet" value="erkek" size="30" />Erkek
         		</td>
         	</tr>
         	
         	<tr>
         		<td align="left">Adres: </td>	
         		<td align="left"><textarea style="width:238px; " rows="5" name="adres"></textarea></td>
         	</tr>
         	
         	<tr>
         		<td align="left">Sehir: </td>	
         		<td align="left">
         		<select name="sehir" style="width:243px; ">
         			<option>---İl Seciniz---</option>
				    <option value="1">Adana</option>
				    <option value="2">Adıyaman</option>
				    <option value="3">Afyon</option>
				    <option value="4">Ağrı</option>
				    <option value="5">Amasya</option>
				    <option value="6">Ankara</option>
				    <option value="7">Antalya</option>
				    <option value="8">Artvin</option>
				    <option value="9">Aydın</option>
				    <option value="10">Balıkesir</option>
				    <option value="11">Bilecik</option>
				    <option value="12">Bingöl</option>
				    <option value="13">Bitlis</option>
				    <option value="14">Bolu</option>
				    <option value="15">Burdur</option>
				    <option value="16">Bursa</option>
				    <option value="17">Çanakkale</option>
				    <option value="18">Çankırı</option>
				    <option value="19">Çorum</option>
				    <option value="20">Denizli</option>
				    <option value="21">Diyarbakır</option>
				    <option value="22">Edirne</option>
				    <option value="23">Elazığ</option>
				    <option value="24">Erzincan</option>
				    <option value="25">Erzurum</option>
				    <option value="26">Eskişehir</option>
				    <option value="27">Gaziantep</option>
				    <option value="28">Giresun</option>
				    <option value="29">Gümüşhane</option>
				    <option value="30">Hakkari</option>
				    <option value="31">Hatay</option>
				    <option value="32">Isparta</option>
				    <option value="33">Mersin</option>
				    <option value="34">İstanbul</option>
				    <option value="35">İzmir</option>
				    <option value="36">Kars</option>
				    <option value="37">Kastamonu</option>
				    <option value="38">Kayseri</option>
				    <option value="39">Kırklareli</option>
				    <option value="40">Kırşehir</option>
				    <option value="41">Kocaeli</option>
				    <option value="42">Konya</option>
				    <option value="43">Kütahya</option>
				    <option value="44">Malatya</option>
				    <option value="45">Manisa</option>
				    <option value="46">K.maraş</option>
				    <option value="47">Mardin</option>
				    <option value="48">Muğla</option>
				    <option value="49">Muş</option>
				    <option value="50">Nevşehir</option>
				    <option value="51">Niğde</option>
				    <option value="52">Ordu</option>
				    <option value="53">Rize</option>
				    <option value="54">Sakarya</option>
				    <option value="55">Samsun</option>
				    <option value="56">Siirt</option>
				    <option value="57">Sinop</option>
				    <option value="58">Sivas</option>
				    <option value="59">Tekirdağ</option>
				    <option value="60">Tokat</option>
				    <option value="61">Trabzon</option>
				    <option value="62">Tunceli</option>
				    <option value="63">Şanlıurfa</option>
				    <option value="64">Uşak</option>
				    <option value="65">Van</option>
				    <option value="66">Yozgat</option>
				    <option value="67">Zonguldak</option>
				    <option value="68">Aksaray</option>
				    <option value="69">Bayburt</option>
				    <option value="70">Karaman</option>
				    <option value="71">Kırıkkale</option>
				    <option value="72">Batman</option>
				    <option value="73">Şırnak</option>
				    <option value="74">Bartın</option>
				    <option value="75">Ardahan</option>
				    <option value="76">Iğdır</option>
				    <option value="77">Yalova</option>
				    <option value="78">Karabük</option>
				    <option value="79">Kilis</option>
				    <option value="80">Osmaniye</option>
				    <option value="81">Düzce</option>
         			
         		</select>
         		</td>
         	</tr>
         	
         	<tr>
         		<td align="left">Cep Telefonu: </td>
         		<td align="left"><input type="text" name="ceptelefonu" size="30" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left">Ev Telefonu: </td>
         		<td align="left"><input type="text" name="evtelefonu" size="30" /></td>
         	</tr>
         	
         	<tr>
         		<td align="left">Sifre: </td>
         		<td align="left"><input type="text" name="sifre" size="30" /></td>
         	</tr>
         	<tr>
         	 <td align="left">&nbsp;</td>
         	 <td align="left"><input  type="submit"  value="Uyeligimi Kaydet"/></td>
            </tr>
         </table>
         <br/>
         
        
         
         
         
         
         </form>
         
         
         
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
