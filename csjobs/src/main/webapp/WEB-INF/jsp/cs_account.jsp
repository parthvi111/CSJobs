<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Account</title>
</head>
<body id="page1" bgcolor="#F6D8CE">
<div class="body1">
  <div style="margin:0 auto;width:940px">    
    <div style="width:100%;overflow:hidden">     
    <div style="padding-left:36px;position:relative;padding-top:15px">
    
    
    <center><p style="color:black;font-size:40px"><b><u>Manage Account </u></b></p></center>
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">
    
    
<h4 style="align:right;color:#FFCC00;color:#dad6cc;font-weight:300;font-size:25px;line-height:1.2em;padding:0 0 7px 0;letter-spacing:-1px"> <a href="logout.html" style="color:#000066;align:right">LogOut:</a>

<table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">

 <tr style="font-size:30px"><th style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Already Applied</th></tr>

<c:forEach items="${job2}" var="jp">
   <tr align="middle" style="font-size:20px">


  <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"> <a href="applicant_details.html?id=${jp.id}">${jp.title}</td></a>
 
</tr>
</c:forEach>
</table></br>

<table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">
 <tr style="font-size:30px"><th colspan="2" style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">You May Apply For</th></tr>
<c:forEach items="${job1}" var="jp">
   <tr align="middle" style="font-size:20px">


 <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jp.title}</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"><a href="degree.html?iu=${jp.id}">Apply Here</a></td>
 
</tr>
</c:forEach>
</table></br>
</div>
      </div>
       </div>
    
   
  </div>
</div>


 
 


</br>




</body>
</html>