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

<%
String obj1frm5 = (session.getAttribute("sessSrclang")).toString();
String obj4frm5 = (session.getAttribute("sessTarlang")).toString();

//out.println(obj1frm5);
//out.println(obj4frm5);

 %>


<center><label><u><b><big>PoC: SPEECH TO SPEECH CONVERSION</big></b></u></label></center>
<label><b>Step1: Select source and target language.</b></label>



<%-- if you want to select value from drop-downlist here is jsp code. --%>
<form action="TranslateAndSynthesizeTesting12.jsp">
  <select name="item1">
  	<option >Select</option>
    <option >English</option>
    <option >French</option>
    <option >Spanish</option>
    
    
  </select>

<input type="hidden">

  <select name="item2">
  	<option >Select</option>
    <option >English</option>
    <option >French</option>
    <option >Spanish</option>
  </select>


<%
//String colour = request.getParameter("item1");
//out.println(colour);


%>

<input type="submit" value="Confirm">


    <%-- To display selected value from dropdown list. --%>
     <%
    
  
     //	String obj1frm12=request.getParameter("item1");
//               	    out.println(obj1frm12);
                    session.setAttribute("sessSrclang", obj1frm5);
                
                    
                    //String obj2frm12=request.getParameter("item2");
                    session.setAttribute("sessTarlang", obj4frm5);
//                    out.println(obj2frm12);
                    
                    // out.println(session.getAttribute("sessSrclang"));
                    //out.println(session.getAttribute("sessTarlang"));
                    
                     %>




<br/>
<%
out.println(session.getAttribute("sessSrclang"));
out.println(session.getAttribute("sessTarlang"));
 %>
</form> 

<br/>
<br/>
<label><b>Step2: Select a wav audio file - to convert into text</b></label>
<br/>
<br/>
<input type="button" value="Browse" onclick="window.location='TranslateAndSynthesizeTesting5.jsp'" >
<%
String obj3frm5 = TranslateAndSynthesizeTesting7.filenamewithpath1();
out.println(obj3frm5);
session.setAttribute("sessSampleFile",obj3frm5);
%>
<br/>
<br/>
<% 
out.println((obj1frm5)+" >> ");
out.println(TranslateAndSynthesizeTesting7.SpeechToTextFinal(obj3frm5, obj1frm5));

String obj5frm5 = TranslateAndSynthesizeTesting7.SpeechToTextFinal(obj3frm5, obj1frm5);
session.setAttribute("sessSampleText", obj5frm5);
%>
<br/>
<br/>
<br/>
<br/>
<label><b>Step2: Click on Translate button - to translate text</b></label>
<br/>
<br/>


<input type="button" value="Translate" onclick="window.location='TranslateAndSynthesizeTesting7.jsp'" >
<br/>
<br/>

</body>
</html>