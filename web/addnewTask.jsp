<%-- 
    Document   : addnewTask
    Created on : Aug 9, 2023, 8:57:18 PM
    Author     : HP
--%>

<%@page import="classes.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.sql.*" %>
<%@ page import="classes.DBConnector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page session ="true" %>

<%
    
    User user =(User)session.getAttribute("user");

%>
<%

 
       
            String name = request.getParameter("taskName");
            String category = request.getParameter("category");
            String priority = request.getParameter("priority");
            String description = request.getParameter("description");
            String scheduleDateStr = request.getParameter("date");

            

            Date currentDate = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
            String currentdateString = dateFormat.format(currentDate);

            
            
            int user_id = 42;
            int category_id;
            if (category.equals("Personal")) {
                category_id = 1;
            } else {
                category_id = 2;
            }
            Connection con = new DBConnector().getConnection();
            String query = "INSERT INTO task (task_name,description,created_date,scheduled_date,priority_level,user_id,category_id) VALUES(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setString(3, currentdateString);
            ps.setString(4, scheduleDateStr);
            ps.setString(5, priority);
            ps.setInt(6, user_id);
            ps.setInt(7, category_id);
            int a=ps.executeUpdate();
            
           if(a>0){
              response.sendRedirect("editdeletelist.jsp?msg=0");
           }else{
               response.sendRedirect("editdeletelist.jsp?msg=1 ");
           }
           

   






%>











<

