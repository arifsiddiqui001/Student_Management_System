<%@page import="com.entity.Student"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="allcss.jsp" %>
</head>
<body class="bg-light">
<%@ include file="navbar.jsp" %>
<div class="container p-4">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<p class="fs-3 text-center">Edit Student</p>

<% 
int id=Integer.parseInt(request.getParameter("id"));
StudentDAO dao=new StudentDAO(DBConnect.getConn());
Student s=dao.getStudentById(id);




%>



<form action="update" method="post">

<div class="mb-3">
    <label class="form-label">Full Name</label>
    <input value="<%= s.getFullname()%>" type="text" name="name" class="form-control">
  </div>

<div class="mb-3">
    <label class="form-label">DOB</label>
    <input value="<%= s.getDob()%>" type="date" name="dob" class="form-control">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input value="<%= s.getAddress()%>" type="text" name="address" class="form-control">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Qualification</label>
    <input value="<%= s.getQualification()%>" type="text" name="qualification" class="form-control">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email"  value="<%= s.getEmail()%>" name="email" class="form-control">   
  </div>

 <input type="hidden" name="id" value="<%= s.getId()%>">		


  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>

</div>
</div>
</div>
</div>
</div>



</body>
</html>