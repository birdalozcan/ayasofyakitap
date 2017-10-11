package com.ayasofya.adminGiris;

import java.util.ArrayList;

public class Kategori {
	private int kategoriid;
	private String kategoriadi;
	private ArrayList<AltKategori> altkategori;
	
	public int getKategoriid() {
		return kategoriid;
	}
	public void setKategoriid(int kategoriid) {
		this.kategoriid = kategoriid;
	}
	public String getKategoriadi() {
		return kategoriadi;
	}
	public void setKategoriadi(String kategoriadi) {
		this.kategoriadi = kategoriadi;
	}
	public ArrayList<AltKategori> getAltkategori() {
		return altkategori;
	}
	public void setAltkategori(ArrayList<AltKategori> altkategori) {
		this.altkategori = altkategori;
	}
}
