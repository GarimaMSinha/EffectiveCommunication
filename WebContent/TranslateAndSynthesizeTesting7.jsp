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
<%
String obj2frm7 = (session.getAttribute("sessSrclang")).toString();
String obj3frm7 = (session.getAttribute("sessTarlang")).toString(); 
%>
<br/>
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



    <%-- To display selected value from dropdown list. --%>
     <%
                	//String obj1frm12=request.getParameter("item1");
//               	    out.println(obj1frm12);
                    session.setAttribute("sessSrclang", obj2frm7);
                
                    
                   // String obj2frm12=request.getParameter("item2");
                    session.setAttribute("sessTarlang", obj3frm7);
//                    out.println(obj2frm12);
                    
                    // out.println(session.getAttribute("sessSrclang"));
                    //out.println(session.getAttribute("sessTarlang"));
                    
                     %>



<input type="submit" value="Confirm">
<br>
<%
out.println(session.getAttribute("sessSrclang"));
out.println(session.getAttribute("sessTarlang"));
 %>
</form> 
<br/>
<br/>
<label><b>Step1: Select a wav audio file - to convert into text</b></label>
<br/>
<br/>
<input type="button" value="Browse" onclick="window.location='TranslateAndSynthesizeTesting5.jsp'" >
<%

out.println(session.getAttribute("sessSampleFile"));
%>


<br/>
<br/>

<%

//out.println(session.getAttribute("sess"));
//String obj1 = session.getAttribute("sess").toString();
//out.println(obj1);
out.println((obj2frm7)+" >> ");
String obj1frm7=session.getAttribute("sessSampleText").toString();
out.println(obj1frm7);
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
<%
out.println((obj3frm7)+" >> ");
String obj4frm7 = TranslateAndSynthesizeTesting7.LanguageTranslator(obj1frm7, obj2frm7, obj3frm7).toString();
out.println(obj4frm7);


String obj5 = obj4frm7.toString();
session.setAttribute("sess1", obj5);
%>

<br/>
<br/>
<br/>
<br/>

<label><b>Step3: Text To Speech</b></label>
<br/>
<br/>
<input type="button" value="TextToSpeech" onclick="window.location='TranslateAndSynthesizeTesting10.jsp'">


<br/>
<br/>
<%-- out.println(obj2frm7);
out.println(obj3frm7);
--%>

</body>
</html>