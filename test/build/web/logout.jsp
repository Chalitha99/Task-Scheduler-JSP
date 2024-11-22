<%-- 
    Document   : logout
    Created on : Aug 11, 2023, 10:32:01 AM
    Author     : Chalitha
--%>
<%@page import="classes.User"%>
<%@page session ="true" %>

<%
    
    User user =(User)session.getAttribute("user");
    
session.invalidate();
response.sendRedirect("login.jsp?log=1");
%>




