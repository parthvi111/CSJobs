<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
      <%--   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
    

<html>
<head>

 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Home</title></head>
<body id="page1" bgcolor="#F6D8CE">
<div class="body1">
  <div style="margin:0 auto;width:940px">    
    <div style="width:100%;overflow:hidden">     
    <div style="padding-left:36px;position:relative;padding-top:15px">
    
    
    
    <center><p style="color:black;font-size:40px"><b><u>CSJOBS APPLICATION</u></b></p></center>
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">
  <table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">
	
	
  
 <tr style="font-size:30px"><th style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Job Opening For</th></tr>
<c:forEach items="${list}" var="jp">

   <tr align="middle" style="font-size:20px">


  <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px"><a href="jobDetails.html?id=${jp.id}">${jp.title}</a></td>
 
</tr>
</c:forEach>
</table>
<br/>
<br/>

	 <h4 style="color:#FFCC00;color:#dad6cc;font-weight:300;font-size:25px;line-height:1.2em;padding:0 0 7px 0;letter-spacing:-1px"><a href="login.html" style="color:#08088A">Already Registered? .. Login Here</a></h4>
	
   <h4 style="color:#FFCC00;color:#dad6cc;font-weight:300;font-size:25px;line-height:1.2em;padding:0 0 7px 0;letter-spacing:-1px"> <a href="register.html" style="color:#08088A">NEW User? .. Register Here</a></h4>
</div>
      </div>
       </div>
    
   
  </div>
</div>
</body>
</html>

