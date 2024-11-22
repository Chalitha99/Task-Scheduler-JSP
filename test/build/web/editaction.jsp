<%-- 
    Document   : editaction
    Created on : Aug 9, 2023, 9:07:28 PM
    Author     : HP
--%>
<%@ page import="java.sql.*" %>
<%@ page import="classes.DBConnector" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Task Action</title>
</head>
<body>
<%
    String id = request.getParameter("task_id");
    String name = request.getParameter("name");
    String category = request.getParameter("category");
    String priority = request.getParameter("priority");
    String description = request.getParameter("description");
    String date = request.getParameter("date");
    
    int category_id;
            if (category.equals("Personal")) {
                category_id = 1;
            } else {
                category_id = 2;
            }

   
        DBConnector obj4 = new DBConnector();
        Connection connection = obj4.getConnection();
        String query = "UPDATE task SET task_name=?, category_id=?, priority_level=?, description=?, scheduled_date=? WHERE task_id=?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, name);
        pstmt.setInt(2, category_id);
        pstmt.setString(3, priority);
        pstmt.setString(4, description);
        pstmt.setString(5, date);
        pstmt.setString(6, id);
        
        int a=pstmt.executeUpdate();
        if(a>0){
            response.sendRedirect("editdeletelist.jsp?");
        }else{
            response.sendRedirect("editdeletelist.jsp?");
        }
        
    
%>
</body>
</html>
