<%@page import="main.java.com.example.projekt_jee_liga.domain.Player"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Liga Piłkarska</title>
  <link href='https://fonts.googleapis.com/css?family=Francois+One|Lato:400,700,900' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <link href="css/foundation.css" rel="stylesheet" type="text/css">
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <script src="js/jquery.js" type="text/javascript" ></script>
  <script src="js/modernizr.js" type="text/javascript" ></script>
  <script src="js/foundation.min.js" type="text/javascript" ></script>
  <script src="js/main.js" type="text/javascript"></script>
</head>
<body>

<jsp:useBean id="storage" class="main.java.com.example.projekt_jee_liga.service.StorageService" scope="application" />
<jsp:useBean id="player" class="main.java.com.example.projekt_jee_liga.domain.Player" scope="session" />
 <!--Zwykłe menu -->
  <div class="row naglowek">
    <ul class="small-block-grid-5 columns">
      <li class="logo"><h3><a href="index.jsp">Liga Piłkarska</a></h3></li>
      <li class="menu"><a href="#">Piłkarze</a>
        <ul class="rozwijaneMenu">
          <li><a href="showAllPlayers.jsp">Wyświetl Wszystkich</a></li>
          <li><a href="getPlayerData.jsp">Dodaj</a></li>
          <!--<li><a href="editPlayer.jsp">Edytuj</a></li>
          <li><a href="getPlayerData.jsp">Usuń</a></li>-->
        </ul>
      </li>
      <li class="menu"><a href="#">Kluby</a>
      	<ul class="rozwijaneMenu">
          <li><a href="showAllClubs.jsp">Wyświetl Wszystkich</a></li>
          <li><a href="getClubData.jsp">Dodaj</a></li>
          <!--<li><a href="#">Usuń</a></li>-->
        </ul>
      </li>
      <li><a href="about">O mnie</a></li>
      <li><a href="#">O projekcie</a></li>
    </ul>
  </div>
  
  <!-- reposnsywne Menu -->
  <div class="responsywneMenu">
    <h3>Liga Piłkarska</h3>
    <div class="hamburger"><i class="fa fa-bars"></i></div>
    <ul class="rozwijaneResponsywne">
      <li><a href="index.jsp">Strona Główna</a></li>
      <li><a href="getPlayerData.jsp">Dodaj piłkarza</a></li>
      <li><a href="showAllPlayers.jsp">Zobacz Piłkarzy</a></li>
      <li><a href="getClubData.jsp">Dodaj Klub</a></li>
      <li><a href="showAllClubs.jsp">Zobacz Kluby</a></li>
    </ul>
  </div>
  
  <div class="glowna row text-center">
 <jsp:setProperty name="player" property="*" />

        <div class="contentbox">

            <table class="operationtable">

                <%
                    String ID = request.getParameter("idedit");
                    int Number = 0; 
                    int ClubId = 0;
                	String  FirstName = "", LastName = "", Position = "";
                    for (Player p : storage.getAllPlayers())
                    {
                        if (p.getPlayerId() == Integer.parseInt(ID))
                        {
                        	ClubId = p.getClubId();
                            FirstName = p.getFirstName();
                            LastName = p.getLastName();
                            Position = p.getPosition();
                            Number = p.getNumber();
                            break;
                        }
                    }
                    out.println("<form action='editPlayer'><input type='hidden' name='id' value='" + ID + "' /><tr><td colspan='2'>Id Piłkarza= " + ID + "</td></tr><tr><td>Id Klubu:</td><td><input type='text' name='clubId' value='" + ClubId + "' /></td></tr><tr><td>Imię:</td><td><input type='text' name='firstName' value='" + FirstName + "' /></td></tr><tr><td>Nazwisko:</td><td><input type='text' name='lastName' value='" + LastName + "' /></td></tr><tr><td>Pozycja:</td><td><input type='text' name='position' value='" + Position + "' /></td></tr><tr><td>Numer na koszulce:</td><td><input type='text' name='number' value='" + Number + "' /></td></tr><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr></form>");
                  //  out.println("<p align='center'><a href='showAllPlayers.jsp'>Powrót do listy Piłkarzy</a></p>");
                %>

            </table>
        </div>


</div>
</body>
</html>