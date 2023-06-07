<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp0607.*" %>
<%
Feed feed = new Feed();
Dog dog = new Dog();
Cat cat = new Cat();
Duck duck = new Duck();
Pig pig = new Pig();
Chicken chicken = new Chicken();

String name = request.getParameter("animal");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(name.equals("dog")){
%>
<%=feed.feed(dog)%><%;
} else if(name.equals("cat")) {
%>
<%=feed.feed(cat)%><%;
} else if(name.equals("duck")) {
%>
<%=feed.feed(duck)%><%;
} else if(name.equals("pig")) {
%>
<%=feed.feed(pig)%><%;
} else if(name.equals("chicken")) {
%>
<%=feed.feed(chicken)%><%;
}
%>


</body>
</html>