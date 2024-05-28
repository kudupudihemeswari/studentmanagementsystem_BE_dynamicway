 <%@page import="model.*"%>
<%@page import="java.util.List"%>
<%@page import="dbconnection.studentdb"%>
<%@page import="services.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href ="register.jsp">
<button>REGISTER</button>
</a>
<table border = 1>
  <thead>
  <tr>
  <th>PIN</th>
  <th>NAME</th>
  <th>EMAIL</th>
  <th>BRANCH</th>
  <th>ACTIONS</th>
  </tr>
  </thead>
  <tbody>
   <% 
 studentservices services=new studentservices(studentdb.conn());
List<student> st=services.fetchall();
 for(student s:st){
	 
 
 %>
 <tr>
 <td><%=s.getPinnum()%></td>
 <td><%=s.getName()%></td>
 <td><%=s.getEmail()%></td>
 <td><%=s.getBranch()%></td>
 <td>
 <button>UPDATE</button>
 <button>DELETE</button>
 </td>
 
 </tr>
 <% } %>
  </tbody>
  
  </table>
</body>
</html>
