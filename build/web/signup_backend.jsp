<%-- 
    Document   : signup_backend
    Created on : Aug 1, 2023, 11:29:43 AM
    Author     : Chalitha
--%>

<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %> 
<%@page import="classes.DBConnector"%>
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="classes.MD5"  %> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup_backend</title>
    </head>
    <body>
      <% 

    String username = request.getParameter("username");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String contact_number = request.getParameter("contact_number");
    String role = "user";
    String password =MD5.getMd5(request.getParameter("password"));
     
   User user =new User(username, name, password, email, contact_number,role);
   
   if(user.register(DBConnector.getConnection())){
   
       response.sendRedirect("signup.jsp?status=1");
   }
   else{
       response.sendRedirect("signup.jsp?status=0");
   
   }
     
    
     
     
     %>
    </body>
</html>
