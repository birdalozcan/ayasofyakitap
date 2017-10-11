<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>





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

    <!-- Timeline CSS -->
    <link href="css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

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
		<%
			String userName = null;
			Cookie[] cookies = request.getCookies();
			if(cookies !=null){
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("user")) userName = cookie.getValue();
			}
			}
			if(userName == null) 
				response.sendRedirect("loginKontrol.jsp");
		%>













    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Ayasofya Admin v1.0</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
               
                 <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="http://localhost:8084/AyasofyaKitap/index.jsp" target="_blank"><i class="fa fa-user fa-fw"></i> Siteye Git</a>
                        </li>
                        
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        
                        <li class="divider"></li>
                        <li><a href="login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                     
                     <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                
                                Hosgeldin, <%=userName %>
                                
                                <span class="input-group-btn">
                                <!-- buraya admin girisi gelecek hosgeldin -->
                                
                                
                                
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        
                        <li>
                            <a class="active" href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> Anasayfa</a>
                        </li>
                        
                        <li>
                            <a  href="kategoriler.jsp"><i class="fa fa-bar-chart-o fa-fw"></i>Kategoriler</a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a  href="kurumbilgileri.jsp"><i class="fa fa-table fa-fw"></i>Kurum Bilgileri</a>
                        </li>
                        <li>
                            <a  href="urunler.jsp"><i class="fa fa-edit fa-fw"></i> Urunler</a>
                        </li>
                        <li>
                            <a  href="siparisler.jsp"><i class="fa fa-wrench fa-fw"></i> Siparisler</a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a  href="kullanicilar.jsp"><i class="fa fa-sitemap fa-fw"></i> Kullanıcılar</a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="yayinevleri.jsp"><i class="fa fa-files-o fa-fw"></i> Yayınevleri</a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="sliders.jsp"><i class="fa fa-camera-retro fa-1x"></i> Sliders</a>
                            
                        </li>
                    </ul>
                    
                    
                    
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Kategori Düzenleme İslemi</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
            
            <!-- /.row -->
            <div class="row">
             
    				<!-- buraya icerik gelecek -->
    		
    	
    	<%        
    	  Connection conDuzenle = null; 
          Statement stmtDuzenle = null;
          ResultSet rsDuzenle = null;
	
          PreparedStatement preparedStatementDuzenle = null;     
        
       try {  
    	String DRIVER = "com.mysql.jdbc.Driver";
        Class.forName(DRIVER).newInstance();
          
          String url = "jdbc:mysql://localhost:3306/ayasofyakitap?user=root&password=root";

        conDuzenle = DriverManager.getConnection(url);
        // out.println("Baglandık.");
  
        
        String id=request.getParameter("altkategoriid");
        
        //KAYDI BURADA DÜZENLE
     String  sqlDuzenle = "UPDATE alt_kategori "
         + " SET kategori_id = ?, "
         + " alt_kategori_adi = ?, "
         + " alt_kategori_sirasi = ?, "
         + " alt_kategori_aktif = ? "
         + " WHERE alt_kategori_id = '"+id+"' ";
     
        
   preparedStatementDuzenle = conDuzenle.prepareStatement(sqlDuzenle);
   
   preparedStatementDuzenle.setString(1, request.getParameter("anakategoriid"));
   preparedStatementDuzenle.setString(2, request.getParameter("altkategoriadi"));
   preparedStatementDuzenle.setString(3, request.getParameter("altkategorisirasi"));
   preparedStatementDuzenle.setString(4, request.getParameter("altkategoriaktiflik"));
   
   preparedStatementDuzenle.executeUpdate();
   //System.out.println("Güncelleme Basarılı");
   response.sendRedirect("kategoriler.jsp");
        
               
            } catch (SQLException e) {
                out.println("SQL Hata: " + e.toString());
            } finally {
     //   conDuzenle.close();
        }
        %>    	
    		
     		
    		
    				     
            </div>
            <!-- /.row -->
            
            
            
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
              
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
