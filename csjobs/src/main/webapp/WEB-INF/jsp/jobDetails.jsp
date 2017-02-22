<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Details</title>
</head>
<body id="page1" bgcolor="#F6D8CE">
<div class="body1">
  <div style="margin:0 auto;width:940px">    
    <div style="width:100%;overflow:hidden">     
    <div style="padding-left:36px;position:relative;padding-top:45px">
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">
  <table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">

        <p style="color:black"><h2><a href = "home.html" style="color:#4343BF"> Home</a> >  <h style="color:#4343BF"> Job Details</h></p></h2>

 <tr style="font-size:30px;align="middle""><th colspan="2" style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Job Details</th></tr>


     <tr align="left" style="font-size:20px">
<td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"><a style="color:#000066" >Title:</a></td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.title}</td></tr>
      <tr align="left" style="font-size:20px">
<td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"><a style="color:#000066" >Description:</a></td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.description}</td></tr>
      <tr align="left" style="font-size:20px">
<td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"><a style="color:#000066" >Publish Date:</a></td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.publishDate}</td> </tr> 
     <tr align="left" style="font-size:20px">
<td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"><a style="color:#000066" >Close Date:</a></td><td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${jb.closeDate}</td></tr>
  
  
 
</table>
</div>
      </div>
       </div>
    
   
  </div>
</div>
</body>
</html>