package com.ayasofya.Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TableBeanSiparisler {
	
public List<Siparisler> getUserList() {
		 
		
		List<Siparisler>  list = new ArrayList<Siparisler>(); 
		
		Connection con ;
		Statement ps;
		ResultSet rs;
		
		  try
		  {
			  
			  Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ayasofyakitap","root","root");
			     ps = con.createStatement();
				 rs = ps.executeQuery("select count(siparis_id) from siparis");
			
			while(rs.next())
			  {
				
				Siparisler nesne = new Siparisler();
				
				nesne.setSiparisid(rs.getInt(1));
				
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
