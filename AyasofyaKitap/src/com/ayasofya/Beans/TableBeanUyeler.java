package com.ayasofya.Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TableBeanUyeler {

	
public List<Uyeler> getUserList() {
		 
		
		List<Uyeler>  list = new ArrayList<Uyeler>(); 
		
		Connection con ;
		Statement ps;
		ResultSet rs;
		
		  try
		  {
			  
			  Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ayasofyakitap","root","root");
			     ps = con.createStatement();
				 rs = ps.executeQuery("select count(uye_id) from uyeler");
			
			while(rs.next())
			  {
				
				Uyeler nesne = new Uyeler();
				
				nesne.setUyeid(rs.getInt(1));
				
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
