<%-- 
    Document   : editdeletelist
    Created on : Aug 9, 2023, 9:09:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="classes.DBConnector" %>
<%@ page import="java.sql.*" %>
<%@page import="classes.User"%>
<%@page session ="true" %>

<%
    
    User user =(User)session.getAttribute("user");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="task.css" />
        <link rel="stylesheet" type="text/css" href="main_1.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://kit.fontawesome.com/d8fba019aa.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>

        <nav>
            <div class="logo"><img src="logo__2_-removebg-preview.png" alt="logo"></div>
            <ul class="nav-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="aboutus_1.jsp">About Us</a></li>
                <li><a href="todo.jsp">My Tasks</a></li>
                <li><a href="login.html">
                        <button id="login-btn">Logout</button></a></li>
            </ul>
            <div class="burger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
        </nav>   

        <%
            if (request.getParameter("msg") != null) {
                String status = request.getParameter("msg");
                if (status.equals("0")) {
        %>
        <!-- <h1>success</h1>-->
        <script>
            swal("Successfully!", "Successfully Added new task!!", "success");
        </script>       
        <% }

            if (status.equals("1")) {
        %>
        <!-- <h1>success</h1>-->
        <script>
            swal("Successfully!", "Successfully Added new task!!", "error");
        </script>       
        <% }
     }%>


        <div id="taskListContainer">
           
            <h3>Task List</h3>
            <table id="taskList">
                <thead>
                    <tr>

                        <th>Task Name</th>
                        <th>Category</th>
                        <th>Priority</th>
                        <th>Description</th>
                        <th>Due Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody id="taskListBody">

                    <%
                        int user_id = 42;
                        try {
                            DBConnector obj1 = new DBConnector();
                            Connection con = obj1.getConnection();
                            String query = "SELECT * FROM task WHERE user_id=?";
                            PreparedStatement pstmt = con.prepareStatement(query);
                            pstmt.setInt(1, user_id);
                            ResultSet rs = pstmt.executeQuery();

                            while (rs.next()) {
                                int task_id = rs.getInt("task_id");
                                int category_id = rs.getInt("category_id");
                                String category;
                                if (category_id == 1) {
                                    category = "Personal";
                                } else {
                                    category = "Work";
                                }

                    %>
                    <tr>

                        <td><%= rs.getString("task_name")%></td>
                        <td><%=category%></td>
                        <td><%= rs.getString("priority_level")%></td>
                        <td><%= rs.getString("description")%></td>
                        <td><%= rs.getString("scheduled_date")%></td>
                        <td> <a href="edit.jsp?task_id=<%= task_id%>"><i class="fas fa-pen"></i></a>&nbsp;&nbsp;
                            <a href="delete.jsp?task_id=<%= task_id%>"><i class="fas fa-trash-alt"></i></a></td>

                </tr>

                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("An error occurred: " + e.getMessage());
                    }
                %>

                </tbody>  


            </table>
                <br><br><br>
                <button type="button" id="cancelBtn" style="position:absolute; right:50px;"><a href="todo.jsp" style="text-decoration: none;color: white;" >Create Task</a></button>
        </div>
    </div>
    <br><br><br><br><br><br><br><br>
    <footer>
        <p>&copy; 2023 ToDo.com | Designed by Me</p>
        <div class="social">
            <ul>
                <li><i class="fa-brands fa-facebook fa-beat"></i></li>
                <li><i class="fa-brands fa-whatsapp fa-beat"></i></li>
                <li><i class="fa-brands fa-instagram fa-beat"></i></li>
                <li>Teams & Conditions</li>
                <li>Privacy polices </li>
            </ul>
        </div>
    </footer>
    <script src="main.js"></script>
    <script src="https://use.fontawesome.com/f1f4436fd5.js"></script>
</body>
</html>
