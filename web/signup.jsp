
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://kit.fontawesome.com/d8fba019aa.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<nav>
    <div class="logo"><img src="logo__2_-removebg-preview.png" alt="logo"></div>
    <ul class="nav-links">
        <li><a href="#"></a></li>
        <li><a href="home_1.jsp">Home</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        
        <li><a href="login.jsp">
            <button id="login-btn">Login</button></a></li>
    </ul>
    <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>
</nav>
<!--content start-->
<div class="singup">
    <div class="form-container">

        <form action="signup_backend.jsp" method="POST">
            <h3>Sign Up</h3>
            <input type="text" name="username" placeholder="Enter UserName" class="box" required/>
            <input type="text" name="name" placeholder="Enter Name" class="box" required/>
            <input type="email" name="email" placeholder="Enter Email" class="box" required/>
            <input type="text" name="contact_number" placeholder="Enter Contact Number" class="box" required/>
            
            <input type="password" name="password" placeholder="Enter Password" class="box" required/>
           

            <input type="submit" name="submit" class="btn1" value="Sign Up" />
            <p>Already have an account? <a href="login.jsp">Login</a></p>
  
            <% 
           if (request.getParameter("status") != null) {
            String status = request.getParameter("status");
                if(status.equals("1")){
            %>
           <!-- <h1>success</h1>-->
           <script>
                swal("Successfully!", "Successfully registerd!", "success");
            </script>
       <% }else{%>
            <script>
                swal("Unccessfully!", "Registration unsuccessfull", "success");
            </script>
        <% } }%>
            
        </form>

    </div>
</div>
<!--content End-->


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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="main.js"></script>
<script src="https://use.fontawesome.com/f1f4436fd5.js"></script>
</body>
</html>