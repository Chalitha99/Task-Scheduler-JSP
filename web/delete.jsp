<%-- 
    Document   : delete
    Created on : Aug 9, 2023, 9:00:50 PM
    Author     : HP
--%>
<%@ page import="java.sql.*" %>
<%@ page import="classes.DBConnector" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Task</title>
</head>
<body>
<%
    String id = request.getParameter("task_id");

    try {
        DBConnector obj5 = new DBConnector();
        Connection connection = obj5.getConnection();
        String query = "DELETE FROM task WHERE task_id=?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, id);
        pstmt.executeUpdate();
        
        response.sendRedirect("editdeletelist.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("editdeletelist.jsp");
    }
%>
</body>
</html>

