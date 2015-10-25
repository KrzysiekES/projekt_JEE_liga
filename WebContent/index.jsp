<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Liga Piłkarska</title>
  <link href='https://fonts.googleapis.com/css?family=Francois+One|Lato:400,700,900' rel='stylesheet' type='text/css'>
  <link href="css/foundation.css" rel="stylesheet" type="text/css">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <script src="js/jquery.js" type="text/javascript" ></script>
  <script src="js/modernizr.js" type="text/javascript" ></script>
  <script src="js/foundation.min.js" type="text/javascript" ></script>
  <script src="js/main.js" type="text/javascript"></script>
</head>
<body>
  <div class="row naglowek">
    <ul class="small-block-grid-5 columns">
      <li><h3>Liga Piłkarska</h3></li>
      <li><a href="#">Piłkarze</a>
        <ul class="rozwijaneMenu">
      	  <li><a href="showAllPlayers.jsp">Wyświetl Wszystkich</a></li>
          <li><a href="addPlayer.jsp">Dodaj</a></li>
          <li><a href="#">Edytuj</a></li>
          <li><a href="getPlayerData.jsp">Usuń</a></li>
        </ul>
      </li>
      <li><a href="#">Kluby</a></li>
      <li><a href="#">Sędziowie</a>
        <ul class="rozwijaneMenu">
      	  <li><a href="#">Wyświetl Wszystkich</a></li>
          <li><a href="#">Dodaj</a></li>
          <li><a href="#">Usuń</a></li>
        </ul>
      </li>
      <li><a href="#">Stadiony</a></li>
    </ul>
  </div>

  <div class="glowna row">
    <div class="small-12 large-8 columns">
      <div class="przyciemnij">
        <img src="img/mecz.jpg" alt="mecz">
      </div>
    </div>
    <div class="zawartosc small-12 large-4 columns">
      <h2>Witaj w lidze UG!</h2>
      <p><a href="hello">Fill a form</a></p>
      <p><a href="form">Fill a form</a></p>
    </div>
  </div>
</body>
</html>