<%-- 
    Document   : home1
    Created on : Aug 3, 2023, 6:56:59 AM
    Author     : Chalitha
--%>

<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session ="true" %>

<%
    
    User user =(User)session.getAttribute("user");

%>

<!DOCTYPE html>
<html>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://kit.fontawesome.com/d8fba019aa.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<nav>
    <div class="logo"><img src="logo__2_-removebg-preview.png" alt="logo"></div>
    <ul class="nav-links">
        <li><a href="home.jsp">Home</a></li>
        <li><a href="aboutus_1.jsp">About</a></li>
        <li><a href="editdeletelist.jsp">Tasks</a></li>
        <li> <b style ="color: purple"> Hi <%=user.getName()+"!!"%></b></li>
        <li><a href="logout.jsp">
            <button id="login-btn">Log Out</button></a></li>
    </ul>
    <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>
</nav>

<div class="image-container">
    <img src="https://www.cflowapps.com/wp-content/uploads/2021/12/diffnce_job_task_process.jpeg" class="d-block w-100" alt="Your Image">

  </div>
<!---next section-->

<!----campus-->
    <section class="campus">
      <h1>Task Scheduler</h1>
      <p>
        "Effortlessly organize your life with our intuitive task scheduler website, <br>ensuring seamless productivity and a harmonious balance between work and leisure."
      <div class="row">
          <div class="campus-col">
            <img src="https://thumbs.dreamstime.com/z/word-writing-text-stop-wasting-time-business-concept-advising-demonstrating-group-start-planning-use-wisely-photo-177050708.jpg?w=992">      <!--div class row eka athule box ekak wge hdenwa ekta thwa div dnmama loku box eka athule boxes gdk hdenwa-->
            <div class="layer">
                <h3>Create Tasks</h3>
            </div>
          </div>
          <div class="campus-col">
              <img src="https://thumbs.dreamstime.com/z/i-can-do-word-writing-notepad-office-supplies-business-i-can-do-word-writing-notepad-office-supplies-business-107652624.jpg?w=992">      <!--div class row eka athule box ekak wge hdenwa ekta thwa div dnmama loku box eka athule boxes gdk hdenwa-->
              <div class="layer">
                  <h3>Schedule Tasks</h3>
              </div>
          </div>
          <div class="campus-col">
              <img src="https://thumbs.dreamstime.com/z/use-time-wisely-text-engraved-old-wooden-signpost-outdoors-nature-use-time-wisely-text-engraved-old-wooden-signpost-182606559.jpg?w=992">      <!--div class row eka athule box ekak wge hdenwa ekta thwa div dnmama loku box eka athule boxes gdk hdenwa-->
              <div class="layer">
                    <h3>Categorize Tasks</h3>
              </div>
          </div>      
       </div>
      </p>
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

</footer>
<script src="main.js"></script>
<script src="https://use.fontawesome.com/f1f4436fd5.js"></script>
</body>
</html>