package Veritabani;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

import java.sql.Statement;

public class JdbcYukle {

    Connection baglanti;

    Statement ifade;

//Projemizde her yerde Class.forname(..) tanimlamamk icin bir metodta tanimlayip

//istedigimiz yerde bu metodu cagirip kullanmak daha iyidir.

    public Statement baglanSag() throws SQLException, ClassNotFoundException

    {

    Class.forName("com.mysql.jdbc.Driver");

   baglanti=DriverManager.getConnection("jdbc:mysql://localhost/ayasofyakitap", "root", "root");

    ifade=baglanti.createStatement();

    return ifade;

    }

}

