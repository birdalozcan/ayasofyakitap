<%@page import="Veritabani.Connect"%>
<%@page import="com.ayasofya.Beans.Kategoriler"%>
<%@page import="com.ayasofya.adminGiris.daoProduct"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ayasofya.adminGiris.Kategori"%>
<%@page import="java.util.*"%>
<%@page language ="java" import ="java.io.* "%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kayıt Girişi</title>
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
				response.sendRedirect("loginKontrol.jsp");
		%>




	<!--KAYIT EKLE FORMU SONU -->




	<%
	

		Connection connect = Connect.connect();
		daoProduct dao = new daoProduct();
		ArrayList<Kategori> listkategori = dao.querykategori();

		int kategoriid = -1;
		int altkategoriid = -1;
		Statement statement = connect.createStatement();
		

	     request.setCharacterEncoding("UTF-8");
		String altkategori =(String) request.getParameter("altkategoriselect");
		String kategori = (String) request.getParameter("kategoriselect");
		String urunadi = (String) request.getParameter("urunadi");
		String urunresmi = (String) request.getParameter("urunresim");
		String urunkodu = (String) request.getParameter("urunkodu");
		String urunetiketfiyati = (String) request.getParameter("urunetiketfiyati");
		String urunindirimlifiyati = (String) request.getParameter("urunindirimlifiyati");
		String urunparabirimi = (String) request.getParameter("urunparabirimi");
		String urunaciklama = (String) request.getParameter("urunaciklama"); 
		String aktif = (String) request.getParameter("aktif");

		for (int i = 0; i < listkategori.size(); i++) {
			if (listkategori.get(i).getKategoriadi().equals(kategori)) {
				kategoriid = listkategori.get(i).getKategoriid();
				System.out.println("Kategori id" + kategoriid);
			}
		}
		for (int i = 0; i < listkategori.size(); i++) {
			for (int j = 0; j < listkategori.get(i).getAltkategori().size(); j++) {
				if (listkategori.get(i).getAltkategori().get(j).getAltkategoriadi().equals(altkategori)) {
					altkategoriid = listkategori.get(i).getAltkategori().get(j).getAltkategoriid();
					System.out.println("AltKategori id" + altkategoriid);
				}
			}
		}

		int result = statement.executeUpdate("INSERT INTO urunler(kategori_id , altkategori_id , urunadi, urunresmi, urunkodu, urunetiketfiyati , urunindirimlifiyati , urunparabirimi , urunaciklama , aktif) VALUES('" + kategoriid + "','" + altkategoriid + "','" + urunadi + "','" + urunresmi	+ "','"	+ urunkodu + "','" + urunetiketfiyati	+ "', '" + urunindirimlifiyati	+ "','"+ urunparabirimi + "','" + urunaciklama + "','" + Integer.parseInt(aktif) + "') ");
		if (result == 1) {
			System.out.println("Kayıt Başarılı");
			response.sendRedirect("urunler.jsp");
		} else {
			System.out.println("Kayıt Başarısız");
		}


	%>
	 


</body>
</html>
