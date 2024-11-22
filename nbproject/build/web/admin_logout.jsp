<%-- 
    Document   : admin_logout
    Created on : Aug 13, 2023, 12:11:51 AM
    Author     : Chalitha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session ="true" %>


<!DOCTYPE html>
<%
session.getAttribute("admin");
session.invalidate();
response.sendRedirect("admin_login.jsp?log=1");


%>

