
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>

<%@page import="com.ayasofya.adminGiris.Giris"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ayasofya Kitap - Admin Panel</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<%!String ad, parola;
           
         %>


					<%
					Giris	girKontNes = new Giris();

						//index.jsp den gelend egerleri alir

						ad = request.getParameter("kullaniciadi");

						parola = request.getParameter("sifre");
					%>

					<%
						//Eger ad ve parola sistemde kayitli ise ona ait bir session olusturur.

						//Oturuma isim uye ve degeri de 1 dir.setAttribute(String name, Object value)

						//Uyeye ait oturum ve deger attiktan sonra AnaSayfa.jsp ye gonderir.

						if (girKontNes.uyeKayKontrol(ad, parola))

						{

							Cookie loginCookie = new Cookie("user",ad);
							//setting cookie to expiry in 30 mins
				            loginCookie.setMaxAge(30*60);
				            response.addCookie(loginCookie);
				            
							HttpSession oturum = request.getSession(true);
							oturum.setAttribute("uye", 1);

							response.sendRedirect("index.jsp");

							
							
							
						} else {

							//Eger uye kayitli degilse sisteme uyeliginiz yok seklinde yazi gelir.Herhangi

							//bir yere yonlendirmedim.Bu ornekte amac session oluturma ve kontrol etmektir.
			
							out.println("<a>Sisteme uyeliginiz yok.</a>");
							response.sendRedirect("error.jsp");
						}
				%>













    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Admin Panel Giris</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="loginKontrol.jsp">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        
                                        <!-- buraya hata mesajı -->
                                        
                                        
                                        
                                        
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
