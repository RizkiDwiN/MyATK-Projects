<!DOCTYPE html>
<html>

<head>
	<!-- Meta dibutuhkan -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favivon -->
    <link rel="shortcut icon" href="Images/Icon/favicon.jpg">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.min.css">

	<title>My ATK</title>
</head>
<style type="text/css">
   @font-face {
         font-family: "Font Rose";
         src: url('Assets/font/Rose.otf');
         }
 
   .rose {
         font-family: "Font Rose";
         }
</style>
<body>
	<!-- Main Pages System -->
	<?php 
	include 'Inc/header.php';
	include 'Inc/conn.php';
  if(isset($_GET['page'])){
    $page = $_GET['page'];
 
    switch ($page) {
      case 'home':
        include "Page/home.php";
        break;     
      default:
        echo "<br><br><br><center><h3>Error 404 ,Maaf. Halaman tidak di temukan !</h3></center>";
        break;
    }
  }else{
    include "Page/home.php";
  }
 
   ?>
    <!-- JQuery -->
	<script type="text/javascript" src="Assets/js/jquery-3.3.1.min.js"></script>
	<!-- Tooltips -->
	<script type="text/javascript" src="Assets/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="Assets/js/bootstrap.min.js"></script>
</body>
</html>