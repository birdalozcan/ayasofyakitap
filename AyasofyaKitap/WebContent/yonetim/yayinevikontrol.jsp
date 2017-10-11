<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ayasofya Kitap</title>
</head>
<body>


         <%
	    
	       request.setCharacterEncoding("UTF-8");
	    
	       String  yayineviadi  = request.getParameter("yayineviadi");
	       String  yayinevikodu = request.getParameter("yayinevikodu");
		   
		   String  yayineviaciklama = request.getParameter("yayineviaciklama");
		   
 
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
			
			preStmt = con.prepareStatement("insert into yayinevi(yayineviadi,yayinevikodu,yayineviaciklama) VALUES(?,?,?)");
						
			preStmt.setString(1, yayineviadi);
			preStmt.setString(2, yayinevikodu);
			preStmt.setString(3, yayineviaciklama);
			
			preStmt.executeUpdate();
			preStmt.close();
			
			con.close();
			
			
			
			//out.println("Kaydınız Veritabanımıza Yapıldı");
			response.sendRedirect("yayinevleri.jsp");
			}
		 
			catch (Exception e) {
			//out.println("Kaydınız Veritabanımıza yapılmadı");
			response.sendRedirect("yayinevleri.jsp");
			System.out.println("HATA : "+e);
			}

	        %>
	        
	        
	        
	       
      
    
	        
	        
</body>
</html>