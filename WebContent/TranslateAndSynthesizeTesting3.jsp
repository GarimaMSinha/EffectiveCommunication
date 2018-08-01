<%@page import="com.lv2code.jsp.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
//String ob;

String ob = new String("C:\\Users\\IBM_ADMIN\\git\\java-sdk\\text-to-speech\\build\\resources\\test\\text_to_speech\\sample1.wav");

TranslateAndSynthesizeTesting3.StoT(ob);
%>

</body>
</html>