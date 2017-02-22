<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body id="page1" bgcolor="#F6D8CE">
<div class="body1">
  <div style="margin:0 auto;width:940px">    
    <div style="width:100%;overflow:hidden">     
    <div style="padding-left:36px;position:relative;padding-top:15px">
    
    <p style="color:black"><h2><a href = "home.html" style="color:#4343BF"> Home</a> >  <h style="color:#4343BF"> Login</h></p></h2>
    
    <p style="color:black;font-size:40px"><b><u>Login Here </u></b></p>
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">    
 <table>   
<form:form modelAttribute="user" >

						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">USERNAME:<h style="color:red">*</h></strong>
						</label>
						<form:input path="email"/><form:errors path="email" />
						</td>
						</tr>			
	            		<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">PASSWORD:<h style="color:red">*</h></strong>
						</label>
						<form:input path="password"/><form:errors path="password" />						
						</td>
						</tr></br>
						
	            		
	            		<tr>
    					<td></br>
    					<input  type="submit"  style="background-color:#4343BF"  name="submit" value="Login"/><br/>    					
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