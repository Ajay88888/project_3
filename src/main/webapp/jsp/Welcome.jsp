<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
.p1 
{
	background-image: url('<%=ORSView.APP_CONTEXT%>/img/pro3.jpg');
	background-size: 100%;
}

.break
{
  	margin: 10px;        
}
</style>
</head>
<body class="p1">
<div class="header" >
<%@include file="Header.jsp" %>

 <form action="<%=ORSView.WELCOME_CTL%>" >
            
            
            <br><br><br><br><br><br><br><br><br><br><br>
            
            
            <h1 align="center">
            <font size="10px" color="white" style="font-size: 70px">Welcome To ORS</font>
            </h1>

<div class="footer">
<%@include file="Footer.jsp" %>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br>

</body>
</html>