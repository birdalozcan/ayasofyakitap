<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	    
	       request.setCharacterEncoding("UTF-8");
	    
	       String  anakategoriid  = request.getParameter("anakategoriid");
	       String  altkategoriadi = request.getParameter("altkategoriadi");
		   String  altkategorisirasi = request.getParameter("altkategorisirasi");
		   String  altkategoriaktiflik = request.getParameter("altkategoriaktiflik");
		   
 
		    String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/ayasofyakitap";
			Connection con = null;
			int id = 0;
			try {
		      Class.forName(driver);
		      out.println("Baglandi");
			} catch (Exception e) {
		      System.exit(0);
		      out.println("Baglanmadi");
			}
			
			try {
		        con = DriverManager.getConnection(url, "root", "root");
			} catch (Exception e) {
		        System.exit(0);
			}
	      %>




			<%
			
			try {
			PreparedStatement preStmt;
			
			preStmt = con.prepareStatement("insert into alt_kategori(kategori_id,alt_kategori_adi,alt_kategori_sirasi,alt_kategori_aktif) VALUES(?,?,?,?)");
						
			preStmt.setString(1, anakategoriid);
			preStmt.setString(2, altkategoriadi);
			preStmt.setString(3, altkategorisirasi);
			preStmt.setString(4, altkategoriaktiflik);
			
			
			preStmt.executeUpdate();
			preStmt.close();
			
			con.close();
			//out.println("Kaydınız Veritabanımıza Yapıldı");
			response.sendRedirect("kategoriler.jsp");
			}
		 
			catch (Exception e) {
			//out.println("Kaydınız Veritabanımıza yapılmadı");
			response.sendRedirect("kategoriler.jsp");
			System.out.println("HATA : "+e);
			}
	        %>
	        
	        
	        
</body>
</html>