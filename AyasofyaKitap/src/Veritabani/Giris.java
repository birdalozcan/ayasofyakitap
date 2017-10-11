package Veritabani;

import java.sql.SQLException;

import java.sql.Statement;

import java.sql.ResultSet;

import java.util.logging.Level;

import java.util.logging.Logger;

//Bu sekilde kullanima dikkat edin.Veritabaniyla ilgili islemler

//jsp sayfasi icinde de olur.Ama bu sekilde yani farkli bir pakette almak

//daha saglikli ve yonetilebilirdir.

public class Giris {

    Statement uyg;

    ResultSet sonuc;

    JdbcYukle yukNes;

    public Giris()

    {

    yukNes=new JdbcYukle();

    }

//JdbcYukle.java icindeki metodu cagirip gelen kullanici adi ve parola

//veritabanimizda kayitli ise true, degilse false donderir.

    public boolean uyeKayKontrol(String kulAdi,String parola) throws SQLException, ClassNotFoundException

    {

    uyg=yukNes.baglanSag();

    uyg.execute("select email,sifre from uyeler " +

      "where email='"+kulAdi+"' and sifre='"+parola+"'");

//execute() islemindeki sonuclari donderiri.

    sonuc=uyg.getResultSet();

        try {

            if (sonuc.next()) {

                return true;

            }

        } catch (SQLException ex) {

            Logger.getLogger(Giris.class.getName()).log(Level.SEVERE, null, ex);

        }

    return false;

    }

}
