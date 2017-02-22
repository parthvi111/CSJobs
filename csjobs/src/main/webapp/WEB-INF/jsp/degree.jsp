<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <div style="padding-left:36px;position:relative;padding-top:15px">
    
            <p style="color:black"><h2><a href = "cs_account.html" style="color:#4343BF"> My Account</a> >  <h style="color:#4343BF"> Degree</h></p></h2>
   <a href="logout.html" style="color:#000066;align:right">LogOut:</a>
    
    <p style="color:black;font-size:40px"><b><u>Apply Here </u></b></p>
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">
    <table> 
<form:form modelAttribute="rt" >
<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Name:<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="name"/><h style="color:red"><form:errors path="name" /></h>							
						</td>
						</tr>
						
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">School:<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="school"/><h style="color:red"><form:errors path="school" /></h>							
						</td>
						</tr>
						
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Year:<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="year"/><h style="color:red"><form:errors path="year" /></h>							
						</td>
						</tr>
						
						
						<tr>
    					<td></br>
    					<p> Press Add Before Clicking On NextPage</p>
    					<input  type="submit"  style="background-color:#4343BF"  name="Add" value="Add"/><br/>    					
    					</td>
    					</tr>



</form:form>
</table>

 <table border = "1" style="width:800px;padding:0;	margin:0;border:1px solid #9097A9;border-bottom:1px solid #9097A9;border-top:5px !important;border-left:0;border-right:0 !important;text-align:left;text-transform:uppercase">
<tr style="font-size:30px;align="middle"><th style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Degree Name</th><th  style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">School Name</th><th  style="border:1px solid #fff;text-align:center;background:#0000CC;color:#000;padding:5px">Year</th></tr>

<c:forEach items="${degr}" var="oo1">
<tr align="left" style="font-size:20px">
  <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${oo1.name}</td>
   <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${oo1.school}</td>
    <td style="color:#FFCC00;background:#ffcc00;background-position:0 -49px;background:#66CC99;color:#000;padding:3px 5px;padding-left:10px">${oo1.year}</td>
 
</tr>
</c:forEach>
</table>

	 <h4 style="color:#FFCC00;color:#dad6cc;font-weight:300;font-size:25px;line-height:1.2em;padding:0 0 7px 0;letter-spacing:-1px"><a href="apply.html" style="color:#08088A">Next Page</a></h4>
</div>
</div>
</div>

</div>
</div>
</body>
</html>