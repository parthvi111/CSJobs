<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="page1" bgcolor="#F6D8CE">
<div class="body1">
  <div style="margin:0 auto;width:940px">    
    <div style="width:100%;overflow:hidden">     
    <div style="padding-left:36px;position:relative;padding-top:45px">
            <p style="color:black"><h2><a href = "cs_account.html" style="color:#4343BF"> My account</a> >  <h style="color:#4343BF"> Applicant Details</h></p></h2>
    
    
        <p style="color:black;font-size:40px"><b><u>APPLICANT DETAILS</u></b></p>
    
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">
    <center>
  <table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">
 <tr style="font-size:30px;align="middle"><th colspan="2" style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Personal Information:</th></tr>

<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">First Name:</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${usr.firstName}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Last Name :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${usr.lastName}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Email :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${usr.email}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Password :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${usr.password}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Address :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${usr.address}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Phone :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${usr.phone}</td></tr>
 


</table></br>

  <table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">
<tr style="font-size:30px;align="middle"><th colspan="2" style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Current Job Info:</th></tr>



<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Current Job Name :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.currentJobTitle}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Company Name :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.currentJobInstitution}</td></tr>
  
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Current Job Year :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.currentJobYear}</td></tr>
<tr align="left" style="font-size:20px"><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">Submition Date :</td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.submitDate}</td></tr>
  
 

</table></br>

  <table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">
<tr style="font-size:30px;align="middle"><th colspan="3" style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Education Information:</th></tr>

<c:forEach items="${d0g}" var="oo">
<tr style="font-size:30px;align="middle"><th style="border:1px solid #fff;text-align:center;background:#006699;color:#000;padding:5px">Degree Name</th><th  style="border:1px solid #fff;text-align:center;background:#006699;color:#000;padding:5px">School Name</th><th  style="border:1px solid #fff;text-align:center;background:#006699;color:#000;padding:5px">Year</th></tr>
<tr align="left" style="font-size:20px">
  <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${oo.name}</td>
   <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${oo.school}</td>
    <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${oo.year}</td>
 
</tr>

</c:forEach>
</table>

</center></div></div></div></div></div>

</body>
</html>