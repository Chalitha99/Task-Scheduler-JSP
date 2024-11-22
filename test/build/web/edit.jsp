<%-- 
    Document   : edit
    Created on : Aug 9, 2023, 9:05:56 PM
    Author     : HP
--%>
<%@ page import="java.sql.*" %>
<%@ page import="classes.DBConnector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="task.css">
        <link rel="stylesheet" type="text/css" href="main_1.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://kit.fontawesome.com/d8fba019aa.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Update Task</title>
    </head>
    <body>
        <nav>
            <div class="logo"><img src="logo__2_-removebg-preview.png" alt="logo"></div>
            <ul class="nav-links">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="task.html">My Tasks</a></li>
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
            String id = request.getParameter("task_id");

            try {

                DBConnector obj3 = new DBConnector();
                Connection connection = obj3.getConnection();
                String query = "SELECT * FROM task where task_id=?";
                PreparedStatement pstmt = connection.prepareStatement(query);
                pstmt.setString(1, id);
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    String priority_level = rs.getString("priority_level");
                    String category;
                    if (rs.getInt("category_id") == 1) {
                        category = "Personal";
                    } else {
                        category = "Work";
                    }
        %>
        <div class="container">
            <div id="taskFormContainer">
                <form action="editaction.jsp?task_id=<%=id%>" method="POST">
                    <label for="taskName">Task Name:</label>
                    <input type="text" value="<%= rs.getString("task_name")%>" name="name" required>

                    <label for="category">Category:</label>
                    <select id="category" name="category">
                        <option value="personal" <%= category.equals("Personal") ? "selected" : ""%>>Personal</option>
                        <option value="work" <%= category.equals("Work") ? "selected" : ""%>>Work</option>
                    </select>

                    <label for="priority">Priority Level:</label>
                    <select id="priority" name="priority">
                        <option value="high" <%= priority_level.equals("high") ? "selected" : ""%>>High</option>
                        <option value="medium" <%= priority_level.equals("medium") ? "selected" : ""%>>Medium</option>
                        <option value="low" <%= priority_level.equals("low") ? "selected" : ""%>>Low</option>
                    </select>

                    <label for="description">Description:</label>
                    <textarea id="description" name="description"><%= rs.getString("description")%></textarea>

                    <label for="scheduleDate">Schedule Date:</label>
                    <input type="date" id="scheduleDate" name="date" value="<%= rs.getDate("scheduled_date")%>" required />
                    <br><br>
                    <center>
                        <button type="submit" class="button">Save</button>
                    </center>
                </form>
            </div>
        </div>
        <%
                } else {
                    out.println("Task not found.");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
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
        <script src="main_1.js"></script>
        <script src="https://use.fontawesome.com/f1f4436fd5.js"></script>
    </body>
</html>
