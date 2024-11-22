<%-- 
    Document   : adminlogin_backend
    Created on : Aug 12, 2023, 5:49:14 PM
    Author     : Chalitha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classes.User"%>

<%@page import="java.sql.*"  %> 
<%@page import="classes.DBConnector"%>
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="classes.MD5"  %> 
<%@page import="classes.User"  %> 
<%@page session ="true" %>

<%
    

    if (request.getParameter("submit") != null) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        

        User user = new User(username, password);

       if (user.adminLog(DBConnector.getConnection())) {

                session.setAttribute("admin", "admin");
                response.sendRedirect("admin.jsp");
            } else {
                response.sendRedirect("login.jsp?status=0");
            }
        
    }
%>
