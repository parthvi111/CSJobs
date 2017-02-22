<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
    
                <p style="color:black"><h2><a href = "cs_account.html" style="color:#4343BF"> My Account</a> >  <h style="color:#4343BF"> Degree</h> >  <h style="color:#4343BF"> Current Job Information</h></p></h2>
    <a href="logout.html" style="color:#000066;align:right">LogOut:</a>
    
    
    <p style="color:black;font-size:40px"><b><u>Add Details About Current Job </u></b></p>
    <div style="float:left;position:relative;width:614px;margin:0 0 37px 0">
    <table> 
	<form:form modelAttribute="applicantadd" >
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">CurrentJobTitle:<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="currentJobTitle"/><h style="color:red"><form:errors path="currentJobTitle" /></h>							
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">CurrentJobInstitution :<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="currentJobInstitution"/><h style="color:red"><form:errors path="currentJobInstitution" /></h>							
						</td>
						</tr>
						
						<tr>
						<td>
						<label>
						<strong style="width:100%;overflow:hidden">CurrentJobYear :<h style="color:red">*</h></strong></td><td>
						</label>
						<form:input path="currentJobYear"/><h style="color:red"><form:errors path="currentJobYear" /></h>							
						</td>
						</tr>
						
						<tr>
    					<td></br>
    					<p> 
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