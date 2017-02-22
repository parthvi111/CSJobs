<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body id="page1" bgcolor="#F6D8CE">
<div class="body1">
  <div style="margin:0 auto;width:940px">    
    <div style="width:100%;overflow:hidden">     
    <div style="padding-left:36px;position:relative;padding-top:15px">
    
        <p style="color:black"><h2><a href = "home.html" style="color:#4343BF"> Home</a> >  <h style="color:#4343BF"> Register</h></p></h2>
    
    
    <p style="color:black;font-size:40px"><b><u>Register Here </u></b></p>
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">    
 <table>   
<form:form modelAttribute="user" >
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Last Name:<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="lastName"/><h style="color:red"><form:errors path="lastName" /></h>							
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">First Name :<h style="color:red">*</h></strong></td><td>
						</label>
 						<form:input path="firstName"/><h style="color:red"><form:errors path="firstName"/></h>
						</td>
						</tr>

						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Email :<h style="color:red">*</h></strong></td><td>
						</label>
 						<form:input path="email"/><h style="color:red"><form:errors path="email"/></h>
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Password:<h style="color:red">*</h></strong></td><td>
						</label>
 						<form:input path="password"/><h style="color:red"><form:errors path="password"/></h>
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Confirm Password:<h style="color:red">*</h></strong></td><td>
						</label>
 						<form:input path="password2"/><h style="color:red"><form:errors path="password2"/></h>
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Phone :<h style="color:red">*</h></strong></td><td>
						</label>
 						<form:input path="phone"/><h style="color:red"><form:errors path="phone"/></h>
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">Address:<h style="color:red">*</h></strong></td><td>
						</label>
 						<form:input path="address" /><h style="color:red"><form:errors path="address"/></h>
						</td>
						</tr>
						
						
						<tr>
    					<td></br>
    					<input  type="submit"  style="background-color:#4343BF"  name="Add" value="Add"/><br/>    					
    					</td>
    					</tr>




</form:form>
</table>
</div>
</div>
</div>
</div>
</div>
</body>
</html>