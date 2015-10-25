<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="storage" class="main.java.com.example.projekt_jee_liga.service.StorageService" scope="application" />
<jsp:useBean id="player" class="main.java.com.example.projekt_jee_liga.domain.Player" scope="session" />

<form action="addPlayer.jsp">

  First name :<input type="text" name="firstName" value="${player.firstName}" /><br />
  Year of birth :<input type="text"  name="yob" value="${player.lastName}" /><br />
  Year of birth :<input type="text"  name="yob" value="${player.position}" /><br />
  Year of birth :<input type="text"  name="yob" value="${player.number}" /><br />
  <input type="submit" value=" OK ">
  
</form>

</body>
</html>