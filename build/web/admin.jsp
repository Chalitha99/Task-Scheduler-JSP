<%-- 
    Document   : admin
    Created on : Aug 4, 2023, 11:50:45 AM
    Author     : HP
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@page session ="true" %>

<%
    
    session.getAttribute("admin");

%>

<!DOCTYPE html>
<html>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Panel</title>
    <link rel="stylesheet" href="admin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://kit.fontawesome.com/d8fba019aa.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        .row {
            padding: 20px 10px 10px 20px;
            width: 100%;

        }

        .card {
            box-shadow: 5px 10px #f3f1f1;
        }

        .card:hover {
            background-color: rgb(216, 217, 218);

        }

        .s1 {
            padding: 20px 10px 10px 20px;
        }

        .btn {
            position: relative;
            left: 100px;
        }
        .heading{
            padding: 20px 10px 10px 20px;
        }
    </style>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"></script>
    <div class="background_">
        <nav>
            <div class="logo"><img src="logo__2_-removebg-preview.png" alt="logo"></div>
            <ul class="nav-links">
               
                <li><a href="admin_logout.jsp">
                        <button id="login-btn">Logout</button></a></li>
                       
            </ul>

        </nav>
        <h1 class="heading">Admin Panel</h1>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "");

                                String query3 = "SELECT COUNT(*) FROM user";
                                PreparedStatement pstmt3 = con3.prepareStatement(query3);
                                ResultSet rs3 = pstmt3.executeQuery();

                                String Countrow = "";
                                while (rs3.next()) {
                                    Countrow = rs3.getString(1);
                                   
                                }
                            
                        %>
                        <h5 class="card-title">No. of Users</h5>
                        <p class="card-text"><% out.println(Countrow); %></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                         <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "");

                                String query4 = "SELECT COUNT(*) FROM task";
                                PreparedStatement pstmt4 = con4.prepareStatement(query4);
                                ResultSet rs4 = pstmt4.executeQuery();

                                String Countrow2 = "";
                                while (rs4.next()) {
                                    Countrow2 = rs4.getString(1);
                                   
                                }
                            
                        %>
                        <h5 class="card-title">No. of Tasks</h5>
                        <p class="card-text"><% out.println(Countrow2); %></p>
                    </div>
                </div>
            </div>

        </div>
        <!--user table-->
        <section class="s1">
            <table class="table table-hover table-striped">

                <thead>
                    <tr>
                        <th colspan="5">Users</th>
                    </tr>
                    <tr>
                        <th>User ID</th>
                        <th>Username</th>
                        <th>Contact Number</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <!--row to loop-->
                    <%
                        Class.forName (
                        "com.mysql.jdbc.Driver");
                        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "");

                        String query1 = "SELECT * FROM user";
                        PreparedStatement pstmt1 = con1.prepareStatement(query1);
                        ResultSet rs1 = pstmt1.executeQuery();

                        while (rs1.next ()) {
                            String id=rs1.getString("user_id");
                    %>
                    <tr>
                        <td scope="row"><%out.println(rs1.getString("user_id"));%></td>
                        <td><%out.println(rs1.getString("username"));%></td>
                        <td><%out.println(rs1.getString("contact_number"));%></td>
                        <td><%out.println(rs1.getString("email"));%></td>
                        <td> <i class="material-icons"><a href="deleteaccount.jsp?id=<%=id%>">delete</a></i></td>
                        
                    </tr>
                    <%    }
                    %>
                    <!--row to loop end-->
                </tbody>
            </table>
        </section>

        <!--task table-->
        <section class="s1">
            <table class="table table-hover table-striped">

                <thead>
                    <tr>
                        <th colspan="6">Tasks</th>
                    </tr>
                    <tr>
                        <th>Task ID</th>
                        <th>User ID</th>
                        <th>Task Name</th>
                        <th>Priority Level</th>
                        <th>Scheduled Date</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <!--row to loop-->
                    <%
                        Class.forName (
                        "com.mysql.jdbc.Driver");
                        Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "");

                        String query2 = "SELECT * FROM task";
                        PreparedStatement pstmt2 = con2.prepareStatement(query2);
                        ResultSet rs2 = pstmt2.executeQuery();

                        while (rs2.next () 
                            ) {

                    %>
                    <tr>
                        <td scope="row"><%out.println(rs2.getString("task_id"));%></td>
                        <td><%out.println(rs2.getString("user_id"));%></td>
                        <td><%out.println(rs2.getString("task_name"));%></td>
                        <td><%out.println(rs2.getString("priority_level"));%></td>
                        <td><%out.println(rs2.getString("scheduled_date"));%></td>
                        <td><%out.println(rs2.getString("description"));%></td>

                    </tr>
                    <%    }
                    %>

                    <!--row to loop end-->
                </tbody>

            </table>
        </section>

        <!--footer start-->
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
            </body>
            </html>
