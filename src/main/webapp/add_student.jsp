<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false"%>
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
<p class="fs-3 text-center">Add Student</p>

<c:if test="${not empty SuccessMsg }">
<p class="text-center text-success">${SuccessMsg }</p>
<c:remove var="SuccessMsg"/>
</c:if>
<c:if test="${not empty ErrorMsg }">
<p class="text-center text-success">${ErrorMsg }</p>
<c:remove var="ErrorMsg"/>
</c:if>


<form action="registerr" method="post">

<div class="mb-3">
    <label class="form-label">Full Name</label>
    <input type="text" name="name" class="form-control">
  </div>

<div class="mb-3">
    <label class="form-label">DOB</label>
    <input type="date" name="dob" class="form-control">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input type="text" name="address" class="form-control">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Qualification</label>
    <input type="text" name="qualification" class="form-control">
  </div>
  
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email" name="email" class="form-control">   
  </div>

  <button type="submit" class="btn btn-primary col-md-12">Submit</button>
</form>





</div>


</div>
</div>
</div>
</div>





</body>
</html>