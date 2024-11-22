

<%@page import="java.sql.*"%>
<%@page import="classes.DBConnector"%>
<%@page import="java.sql.PreparedStatement"%> 
<% 
   
    String id = request.getParameter("id");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "");
    
    String query="DELETE FROM user WHERE user_id=?";
    PreparedStatement pstmt=con.prepareStatement(query);
    pstmt.setString(1, id);
   int a = pstmt.executeUpdate();

    if(a>0){
        response.sendRedirect("admin.jsp?status=0");
    }

%>
