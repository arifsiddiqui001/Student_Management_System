<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
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


 <div class="container p-3">
 <div class="card">
 <div class="card-body">
 
 
 <div class="text-center fs-1">All Student Details</div>
 <c:if test="${not empty SuccessMsg }">
<p class="text-center text-success">${SuccessMsg }</p>
<c:remove var="SuccessMsg"/>
</c:if>
<c:if test="${not empty ErrorMsg }">
<p class="text-center text-success">${ErrorMsg }</p>
<c:remove var="ErrorMsg"/>
</c:if>
 
 
 <table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">DOB</th>
      <th scope="col">Address</th>
      <th scope="col">Qualification</th>
      <th scope="col">Email</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%  StudentDAO dao=new StudentDAO(DBConnect.getConn());
List <Student> list=dao.getAllStudents();
for(Student s:list){
	%>
	
    <tr>
      <th scope="row"><%=s.getFullname() %></th>
      <td><%=s.getDob() %></td>
      <td><%=s.getAddress() %></td>
      <td><%=s.getQualification() %></td>
      <td><%=s.getEmail() %></td>
      <td>
      <a href="edit_student.jsp?id=<%=s.getId() %>" class="btn btn-sm btn-primary">Edit</a>
       <a href="delete1?id="<%=s.getId()%>" class="btn btn-sm btn-danger ms-1">Delete</a>
      </td>
    </tr>
<%
}
%>
  
  
    </tr>
   
  
  </tbody>
</table>
 </div>
 </div>
 
 
 </div>

</body>
</html>