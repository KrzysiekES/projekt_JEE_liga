<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodawanie Piłkarza</title>
</head>
<body>

<jsp:useBean id="storage" class="main.java.com.example.projekt_jee_liga.service.StorageService" scope="application" />
<jsp:useBean id="player" class="main.java.com.example.projekt_jee_liga.domain.Player" scope="session" />

<form action="addPlayer.jsp">
  Podaj imię :<input type="text" name="firstName" value="${player.firstName}" /><br />
  Podaj nazwisko :<input type="text"  name="lastName" value="${player.lastName}" /><br />
  Podaj pozycję :<input type="text"  name="position" value="${player.position}" /><br />
  podaj numer na koszulce :<input type="number"  name="number" value="${player.number}" /><br />
  <input type="submit" value="Zatwierdź">
  
</form>

</body>
</html>