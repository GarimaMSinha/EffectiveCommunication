<%@page import="com.lv2code.jsp.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PoC: SpeechToSpeech</title>
</head>
<body>
<br/>
<br/>
<label><b>Step1: Speech To Text Conversion  </b></label>
<br/>
<br/>
<input type="button" value="Browse a wav file" onclick="window.location='TranslateAndSynthesizeTesting5.jsp'" >

<%

String a = TranslateAndSynthesizeTesting5.filenamewithpath1().toString();
out.println('\n'+TranslateAndSynthesizeTesting5.StoT(a));

String b = TranslateAndSynthesizeTesting5.StoT(a);
session.setAttribute("sess", b);

//request.setAttribute("sess", a);

//out.println(session.getAttribute('\n'+"sess"));
%>

<br/>
<br/>

<input type="button" value="Translate" onclick="window.location='TranslateAndSynthesizeTesting10.jsp' " >

<br/>
<br/>

</body>
</html>