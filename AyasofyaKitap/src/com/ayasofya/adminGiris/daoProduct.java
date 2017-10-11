package com.ayasofya.adminGiris;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Veritabani.Connect;

public class daoProduct {
	Connection connect;
	
	public ArrayList<Product> queryproduct() {
		connect = Connect.connect();
		ArrayList<Product> listproduct = new ArrayList<Product>();
		Statement statementproduct = null;
		ResultSet rsproduct = null;
		try {
			statementproduct = connect.createStatement();
			rsproduct = statementproduct.executeQuery("SELECT * FROM urunler WHERE aktif='"+1+"' ORDER BY urun_id DESC LIMIT 3");
			while (rsproduct.next()) {
				Product product = new Product();
				product.setUrunid(rsproduct.getInt("urun_id"));
				product.setKategoriid(rsproduct.getInt("kategori_id"));
				product.setUrunadi(rsproduct.getString("urunadi"));
				product.setUrunresmi(rsproduct.getString("urunresmi"));
				product.setUrunkodu(rsproduct.getString("urunkodu"));
				product.setUrunetiketfiyati(rsproduct.getString("urunetiketfiyati"));
				product.setUrunindirimlifiyati(rsproduct.getString("urunindirimlifiyati"));
				product.setUrunparabirimi(rsproduct.getString("urunparabirimi"));
				product.setUrunaciklama(rsproduct.getString("urunaciklama"));
				listproduct.add(product);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listproduct;
	}
	
	public ArrayList<Product> queryproductsecilen() {
		connect = Connect.connect();
		ArrayList<Product> listproduct = new ArrayList<Product>();
		Statement statementproduct = null;
		ResultSet rsproduct = null;
		try {
			statementproduct = connect.createStatement();
			rsproduct = statementproduct.executeQuery("SELECT * FROM urunler WHERE aktif='"+1+"' ORDER BY RAND() DESC LIMIT 3");
			while (rsproduct.next()) {
				Product product = new Product();
				product.setUrunid(rsproduct.getInt("urun_id"));
				product.setKategoriid(rsproduct.getInt("kategori_id"));
				product.setUrunadi(rsproduct.getString("urunadi"));
				product.setUrunresmi(rsproduct.getString("urunresmi"));
				product.setUrunkodu(rsproduct.getString("urunkodu"));
				product.setUrunetiketfiyati(rsproduct.getString("urunetiketfiyati"));
				product.setUrunindirimlifiyati(rsproduct.getString("urunindirimlifiyati"));
				product.setUrunparabirimi(rsproduct.getString("urunparabirimi"));
				product.setUrunaciklama(rsproduct.getString("urunaciklama"));
				listproduct.add(product);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listproduct;
	}
	
	
	public ArrayList<Product> queryproductgun() {
		connect = Connect.connect();
		ArrayList<Product> listproduct = new ArrayList<Product>();
		Statement statementproduct = null;
		ResultSet rsproduct = null;
		try {
			statementproduct = connect.createStatement();
			rsproduct = statementproduct.executeQuery("SELECT * FROM urunler WHERE aktif='"+1+"' ORDER BY RAND() DESC LIMIT 1");
			while (rsproduct.next()) {
				Product product = new Product();
				product.setUrunid(rsproduct.getInt("urun_id"));
				product.setKategoriid(rsproduct.getInt("kategori_id"));
				product.setUrunadi(rsproduct.getString("urunadi"));
				product.setUrunresmi(rsproduct.getString("urunresmi"));
				product.setUrunkodu(rsproduct.getString("urunkodu"));
				product.setUrunetiketfiyati(rsproduct.getString("urunetiketfiyati"));
				product.setUrunindirimlifiyati(rsproduct.getString("urunindirimlifiyati"));
				product.setUrunparabirimi(rsproduct.getString("urunparabirimi"));
				product.setUrunaciklama(rsproduct.getString("urunaciklama"));
				listproduct.add(product);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listproduct;
	}
	
	
	
	
	
	
	
	public Product queryproductid(int urunid) {
		connect = Connect.connect();
		Statement statementproduct = null;
		ResultSet rsproduct = null;
		Product product = new Product();
		try {
			statementproduct = connect.createStatement();
			rsproduct = statementproduct.executeQuery("SELECT * FROM urunler WHERE urun_id='"+urunid+"' AND aktif='"+1+"' ");
			while (rsproduct.next()) {
				product.setKategoriid(rsproduct.getInt("kategori_id"));
				product.setUrunadi(rsproduct.getString("urunadi"));
				product.setUrunresmi(rsproduct.getString("urunresmi"));
				product.setUrunkodu(rsproduct.getString("urunkodu"));
				product.setUrunetiketfiyati(rsproduct.getString("urunetiketfiyati"));
				product.setUrunindirimlifiyati(rsproduct.getString("urunindirimlifiyati"));
				product.setUrunparabirimi(rsproduct.getString("urunparabirimi"));
				product.setUrunaciklama(rsproduct.getString("urunaciklama"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return product;
	}
	public ArrayList<Product> queryproductforkategori(int kategoriid) {
		connect = Connect.connect();
		ArrayList<Product> listproduct = new ArrayList<Product>();
		Statement statementproduct = null;
		ResultSet rsproduct = null;
		try {
			statementproduct = connect.createStatement();
			rsproduct = statementproduct.executeQuery("SELECT * FROM urunler WHERE kategori_id='"+kategoriid+"' AND aktif='"+1+"' ");
			while (rsproduct.next()) {
				Product product = new Product();
				product.setUrunid(rsproduct.getInt("urun_id"));
				product.setKategoriid(rsproduct.getInt("kategori_id"));
				product.setUrunadi(rsproduct.getString("urunadi"));
				product.setUrunresmi(rsproduct.getString("urunresmi"));
				product.setUrunkodu(rsproduct.getString("urunkodu"));
				product.setUrunetiketfiyati(rsproduct.getString("urunetiketfiyati"));
				product.setUrunindirimlifiyati(rsproduct.getString("urunindirimlifiyati"));
				product.setUrunparabirimi(rsproduct.getString("urunparabirimi"));
				product.setUrunaciklama(rsproduct.getString("urunaciklama"));
				listproduct.add(product);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listproduct;
	}
	public ArrayList<Product> queryproductforaltkategori(int altkategoriid) {
		connect = Connect.connect();
		ArrayList<Product> listproduct = new ArrayList<Product>();
		Statement statementproduct = null;
		ResultSet rsproduct = null;
		try {
			statementproduct = connect.createStatement();
			rsproduct = statementproduct.executeQuery("SELECT * FROM urunler WHERE altkategori_id='"+altkategoriid+"' AND aktif='"+1+"' ");
			while (rsproduct.next()) {
				Product product = new Product();
				product.setUrunid(rsproduct.getInt("urun_id"));
				product.setAltkategoriid(rsproduct.getInt("altkategori_id"));
				product.setUrunadi(rsproduct.getString("urunadi"));
				product.setUrunresmi(rsproduct.getString("urunresmi"));
				product.setUrunkodu(rsproduct.getString("urunkodu"));
				product.setUrunetiketfiyati(rsproduct.getString("urunetiketfiyati"));
				product.setUrunindirimlifiyati(rsproduct.getString("urunindirimlifiyati"));
				product.setUrunparabirimi(rsproduct.getString("urunparabirimi"));
				product.setUrunaciklama(rsproduct.getString("urunaciklama"));
				listproduct.add(product);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listproduct;
	}
	public ArrayList<Kategori> querykategori() {
		connect = Connect.connect();
		ArrayList<Kategori> listkategori = new ArrayList<Kategori>();		
		Statement statementkategori = null;
		ResultSet rskategori = null;
		Statement statementaltkategori = null;
		ResultSet rsaltkategori = null;
		try {
			statementkategori = connect.createStatement();
			statementaltkategori = connect.createStatement();
			rskategori = statementkategori.executeQuery("SELECT kategori_id, kategoriadi FROM kategoriler WHERE kategoriaktif='"+1+"' ");
			while (rskategori.next()) {
				int kategoriid = rskategori.getInt("kategori_id");
				String kategoriadi = rskategori.getString("kategoriadi");
				if (!(kategoriadi == null || kategoriadi.equals(""))) {
					Kategori kategori = new Kategori();
					kategori.setKategoriid(kategoriid);
					kategori.setKategoriadi(kategoriadi);
					
					rsaltkategori = statementaltkategori.executeQuery("SELECT alt_kategori_id, alt_kategori_adi FROM alt_kategori WHERE kategori_id='"+kategoriid+"' AND alt_kategori_aktif='"+1+"' ");
					ArrayList<AltKategori> listaltkategori = new ArrayList<AltKategori>();
					while (rsaltkategori.next()) {
						int altkategoriid = rsaltkategori.getInt("alt_kategori_id");
						String altkategoriadi = rsaltkategori.getString("alt_kategori_adi");
						if (!(altkategoriadi == null || altkategoriadi.equals(""))) {
							
							AltKategori altKategori = new AltKategori();
							altKategori.setAltkategoriid(altkategoriid);
							altKategori.setAltkategoriadi(altkategoriadi);
							listaltkategori.add(altKategori);
						}
					}
					kategori.setAltkategori(listaltkategori);
					listkategori.add(kategori);
					
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return listkategori;
	}
	public void insertbox(int uyeid, int urunid) {
		connect = Connect.connect();
		Statement statement = null;
		ResultSet rs = null;
		int result = 0;
		try {
			statement = connect.createStatement();
			rs = statement.executeQuery("SELECT urunsayisi FROM sepetim WHERE uye_id='"+uyeid+"' AND urun_id='"+urunid+"' ");
			while (rs.next()) {
				int urunsayisi = rs.getInt("urunsayisi");
				urunsayisi += 1;
				result = statement.executeUpdate("UPDATE sepetim SET urunsayisi='"+urunsayisi+"' WHERE uye_id='"+uyeid+"' AND urun_id='"+urunid+"' ");
			}
		} catch (SQLException e) {
			
		}
			
		if(result == 0) {
			try {
				statement.executeUpdate("INSERT INTO sepetim (uye_id, urun_id, urunsayisi) VALUES('"+uyeid+"', '"+urunid+"', '"+1+"') ");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
	public ArrayList<Product> querybox(int uyeid) {
		ArrayList<Product> list = new ArrayList<Product>();
		daoProduct dao = new daoProduct();
		connect = Connect.connect();
		Statement statement = null;
		ResultSet rs = null;
		try {
			statement = connect.createStatement();
			rs = statement.executeQuery("SELECT urun_id, urunsayisi FROM sepetim WHERE uye_id='"+uyeid+"' ");
			while (rs.next()) {
				int urunid = rs.getInt("urun_id");
				int urunsayisi = rs.getInt("urunsayisi");
				Product product = new Product();
				product = dao.queryproductid(urunid);
				product.setUrunid(urunid);
				product.setUrunsayisi(urunsayisi);
				list.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
