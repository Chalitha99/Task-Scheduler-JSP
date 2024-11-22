
<%-- 
    Document   : login_backend
    Created on : Aug 3, 2023, 7:15:17 AM
    Author     : Chalitha
--%>
<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %> 
<%@page import="classes.DBConnector"%>
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="classes.MD5"  %> 
<%@page import="classes.User"  %> 
<%@page session ="true" %>

<%
    

    if (request.getParameter("submit") != null) {
        String username = request.getParameter("username");
        String password = MD5.getMd5(request.getParameter("password"));
       

        User user = new User(username, password);

        if (user.authenticate(DBConnector.getConnection())) {

                session.setAttribute("user", user);
                response.sendRedirect("home.jsp");
            } else {
                response.sendRedirect("login.jsp?status=0");
            }
        }
    
%>
