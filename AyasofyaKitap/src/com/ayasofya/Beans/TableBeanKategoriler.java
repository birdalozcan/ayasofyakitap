package com.ayasofya.Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TableBeanKategoriler {
	public List<Kategoriler> getUserList() {
		 
		
		List<Kategoriler>  list = new ArrayList<Kategoriler>(); 
		
		Connection con ;
		Statement ps;
		ResultSet rs;
		
		  try
		  {
			  
			  Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ayasofyakitap","root","root");
			     ps = con.createStatement();
				 rs = ps.executeQuery("select count(kategori_id) from kategoriler");
			
			while(rs.next())
			  {
				
				Kategoriler nesne = new Kategoriler();
				
				nesne.setKategoriid(rs.getInt(1));
				
				//System.out.println(rs.getString(1));
				
				
				
				list.add(nesne);
				
			  }
			
			con.close();
			rs.close();
			ps.close();
			
			
			
		  }
		  catch (Exception e)
		  {
			  System.out.println("Error Data : " + e.getMessage());
			  
		  }
		return list;
		
		  
		 
		  
		  
		  
		  

	}






	}

