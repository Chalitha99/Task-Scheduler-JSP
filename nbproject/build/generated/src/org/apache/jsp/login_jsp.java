package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"login.css\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" />\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\n");
      out.write("        <script src=\"https://kit.fontawesome.com/d8fba019aa.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav>\n");
      out.write("            <div class=\"logo\"><img src=\"logo__2_-removebg-preview.png\" alt=\"logo\"></div>\n");
      out.write("            <ul class=\"nav-links\">\n");
      out.write("                <li><a href=\"#\"></a></li>\n");
      out.write("                <li><a href=\"home_1.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("                \n");
      out.write("                <li><a href=\"login.jsp\">\n");
      out.write("                        <button id=\"login-btn\">User Login</button></a></li>\n");
      out.write("                        \n");
      out.write("                        <li><a href=\"admin_login.jsp\">\n");
      out.write("                        <button id=\"login-btn\">Admin </button></a></li>        \n");
      out.write("            </ul>\n");
      out.write("            <div class=\"burger\">\n");
      out.write("                <div class=\"line1\"></div>\n");
      out.write("                <div class=\"line2\"></div>\n");
      out.write("                <div class=\"line3\"></div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!--content start-->\n");
      out.write("        <div class=\"center\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <div class=\"login\">\n");
      out.write("                            <div class=\"form-container\">\n");
      out.write("\n");
      out.write("                                <form action=\"login_backend.jsp\" method=\"POST\">\n");
      out.write("                                    <h3>User Log In</h3>\n");
      out.write("                                    <input type=\"text\" name=\"username\" placeholder=\"Enter User Name\" class=\"box\" required/>\n");
      out.write("                                    <input type=\"password\" name=\"password\" placeholder=\"Enter Password\" class=\"box\" required/>\n");
      out.write("                                    \n");
      out.write("                                    <input type=\"submit\" name=\"submit\" class=\"btn1\" value=\"Log In\" />\n");
      out.write("                                    <p>Don't have an account? <a href=\"signup.jsp\">Sign Up</a></p>\n");
      out.write("\n");
      out.write("                                    ");

                                        if (request.getParameter("log") != null) {
                                            String status = request.getParameter("log");
                                            if (status.equals("1")) {
                                    
      out.write("\n");
      out.write("                                    <!-- <h1>success</h1>-->\n");
      out.write("                                    <script>\n");
      out.write("                                        swal(\"Successfully!\", \"Successfully Logged Out!!\", \"success\");\n");
      out.write("                                    </script>       \n");
      out.write("                                    ");
 }
                                    }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </form>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--content End-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--footer start-->\n");
      out.write("        <footer>\n");
      out.write("            <p>&copy; 2023 ToDo.com | Designed by Me</p>\n");
      out.write("            <div class=\"social\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><i class=\"fa-brands fa-facebook fa-beat\"></i></li>\n");
      out.write("                    <li><i class=\"fa-brands fa-whatsapp fa-beat\"></i></li>\n");
      out.write("                    <li><i class=\"fa-brands fa-instagram fa-beat\"></i></li>\n");
      out.write("                    <li>Teams & Conditions</li>\n");
      out.write("                    <li>Privacy polices </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n");
      out.write("        <script src=\"login.js\"></script>\n");
      out.write("        <script src=\"https://use.fontawesome.com/f1f4436fd5.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
