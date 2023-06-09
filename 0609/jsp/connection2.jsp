<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
int idx = Integer.parseInt(request.getParameter("idx"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = null;
String url = "jdbc:mariadb://localhost:3307/jspdb";
String user = "root";
String pass = "maria";
Class.forName("org.mariadb.jdbc.Driver");
System.out.println("드라이버 로딩!");
con = DriverManager.getConnection(url, user, pass);
System.out.println("접속 성공!");

//int idx = 1;
String sql = "delete from tmp where idx="+idx;
out.println("DB 정보 삭제 완료!");

Statement stmt = con.createStatement();
stmt.executeUpdate(sql);

%>
<form action="input.jsp">
<input type="submit" value="Back">
</form>
</body>
</html>