<%-- 
    Document   : todo
    Created on : Aug 9, 2023, 9:11:16 PM
    Author     : HP
--%>
<%@page import="classes.User"%>
<%@ page import="java.sql.*" %>
<%@ page import="classes.DBConnector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session ="true" %>

<%
    
    User user =(User)session.getAttribute("user");

%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://kit.fontawesome.com/d8fba019aa.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="task.css">
    </head>
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
    
    <%--
        int id = 1;
        try {
            DbConnector obj = new DbConnector();
            Connection connection = obj.getConnection();
            String query = "SELECT max(id) FROM todo";
            PreparedStatement pstmt = connection.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            if (rs.first()) {
                id = rs.getInt(1) + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
   --%>

<div class="container">
    <h2>Task Scheduler</h2>



    <div id="taskFormContainer" style="display: none">
        <h3>Create Task</h3>

        <form id="taskForm" action="addnewTask.jsp">
            <label for="taskName">Task Name:</label>
            <input type="text" id="taskName" name="taskName" required />

            <label for="category">Category:</label>
            <select id="category" name="category">
                <option value="work">Personal</option>
                <option value="vacation">Work</option>
            </select>

            <label for="priority">Priority Level:</label>
            <select id="priority" name="priority">
                <option value="high">High</option>
                <option value="medium">Medium</option>
                <option value="low">Low</option>
            </select>

            <label for="description">Description:</label>
            <textarea id="description" name="description" ></textarea>

            <label for="scheduleDate">Schedule Date:</label>
            <input type="date" id="scheduleDate" name="date" required />

            <button type="submit" id="createTaskBtn" name="submit">Create Task</button>
            <button type="button" id="cancelBtn">Cancel</button> 
        </form>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const taskFormContainer = document.getElementById("taskFormContainer");
        taskFormContainer.style.display = "block";
    });
    

</script>



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
