package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import mypackage.dbquery;

public final class login1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\" >\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <title>Animated login form</title>\r\n");
      out.write("  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css\">\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("      <style>\r\n");
      out.write("      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */\r\n");
      out.write("      body {\r\n");
      out.write("  font-family: \"Open Sans\", sans-serif;\r\n");
      out.write("  height: 100vh;\r\n");
      out.write("  background: url(\"https://i.imgur.com/HgflTDf.jpg\") 50% fixed;\r\n");
      out.write("  background-size: cover;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@keyframes spinner {\r\n");
      out.write("  0% {\r\n");
      out.write("    transform: rotateZ(0deg);\r\n");
      out.write("  }\r\n");
      out.write("  100% {\r\n");
      out.write("    transform: rotateZ(359deg);\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("* {\r\n");
      out.write("  box-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".wrapper {\r\n");
      out.write("  display: flex;\r\n");
      out.write("  align-items: center;\r\n");
      out.write("  flex-direction: column;\r\n");
      out.write("  justify-content: center;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  min-height: 100%;\r\n");
      out.write("  padding: 20px;\r\n");
      out.write("  background: rgba(4, 40, 68, 0.85);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login {\r\n");
      out.write("  border-radius: 2px 2px 5px 5px;\r\n");
      out.write("  padding: 10px 20px 20px 20px;\r\n");
      out.write("  width: 90%;\r\n");
      out.write("  max-width: 320px;\r\n");
      out.write("  background: #ffffff;\r\n");
      out.write("  position: relative;\r\n");
      out.write("  padding-bottom: 80px;\r\n");
      out.write("  box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3);\r\n");
      out.write("}\r\n");
      out.write(".login.loading button {\r\n");
      out.write("  max-height: 100%;\r\n");
      out.write("  padding-top: 50px;\r\n");
      out.write("}\r\n");
      out.write(".login.loading button .spinner {\r\n");
      out.write("  opacity: 1;\r\n");
      out.write("  top: 40%;\r\n");
      out.write("}\r\n");
      out.write(".login.ok button {\r\n");
      out.write("  background-color: #8bc34a;\r\n");
      out.write("}\r\n");
      out.write(".login.ok button .spinner {\r\n");
      out.write("  border-radius: 0;\r\n");
      out.write("  border-top-color: transparent;\r\n");
      out.write("  border-right-color: transparent;\r\n");
      out.write("  height: 20px;\r\n");
      out.write("  animation: none;\r\n");
      out.write("  transform: rotateZ(-45deg);\r\n");
      out.write("}\r\n");
      out.write(".login input {\r\n");
      out.write("  display: block;\r\n");
      out.write("  padding: 15px 10px;\r\n");
      out.write("  margin-bottom: 10px;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  border: 1px solid #ddd;\r\n");
      out.write("  transition: border-width 0.2s ease;\r\n");
      out.write("  border-radius: 2px;\r\n");
      out.write("  color: #ccc;\r\n");
      out.write("}\r\n");
      out.write(".login input + i.fa {\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  font-size: 1em;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  margin-top: -47px;\r\n");
      out.write("  opacity: 0;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  transition: all 0.1s ease-in;\r\n");
      out.write("}\r\n");
      out.write(".login input:focus {\r\n");
      out.write("  outline: none;\r\n");
      out.write("  color: #444;\r\n");
      out.write("  border-color: #2196F3;\r\n");
      out.write("  border-left-width: 35px;\r\n");
      out.write("}\r\n");
      out.write(".login input:focus + i.fa {\r\n");
      out.write("  opacity: 1;\r\n");
      out.write("  left: 30px;\r\n");
      out.write("  transition: all 0.25s ease-out;\r\n");
      out.write("}\r\n");
      out.write(".login a {\r\n");
      out.write("  font-size: 0.8em;\r\n");
      out.write("  color: #2196F3;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write(".login .title {\r\n");
      out.write("  color: #444;\r\n");
      out.write("  font-size: 1.2em;\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("  margin: 10px 0 30px 0;\r\n");
      out.write("  border-bottom: 1px solid #eee;\r\n");
      out.write("  padding-bottom: 20px;\r\n");
      out.write("}\r\n");
      out.write(".login button {\r\n");
      out.write("  width: 100%;\r\n");
      out.write("  height: 100%;\r\n");
      out.write("  padding: 10px 10px;\r\n");
      out.write("  background: #2196F3;\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  display: block;\r\n");
      out.write("  border: none;\r\n");
      out.write("  margin-top: 20px;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  left: 0;\r\n");
      out.write("  bottom: 0;\r\n");
      out.write("  max-height: 60px;\r\n");
      out.write("  border: 0px solid rgba(0, 0, 0, 0.1);\r\n");
      out.write("  border-radius: 0 0 2px 2px;\r\n");
      out.write("  transform: rotateZ(0deg);\r\n");
      out.write("  transition: all 0.1s ease-out;\r\n");
      out.write("  border-bottom-width: 7px;\r\n");
      out.write("}\r\n");
      out.write(".login button .spinner {\r\n");
      out.write("  display: block;\r\n");
      out.write("  width: 40px;\r\n");
      out.write("  height: 40px;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  border: 4px solid #ffffff;\r\n");
      out.write("  border-top-color: rgba(255, 255, 255, 0.3);\r\n");
      out.write("  border-radius: 100%;\r\n");
      out.write("  left: 50%;\r\n");
      out.write("  top: 0;\r\n");
      out.write("  opacity: 0;\r\n");
      out.write("  margin-left: -20px;\r\n");
      out.write("  margin-top: -20px;\r\n");
      out.write("  animation: spinner 0.6s infinite linear;\r\n");
      out.write("  transition: top 0.3s 0.3s ease, opacity 0.3s 0.3s ease, border-radius 0.3s ease;\r\n");
      out.write("  box-shadow: 0px 1px 0px rgba(0, 0, 0, 0.2);\r\n");
      out.write("}\r\n");
      out.write(".login:not(.loading) button:hover {\r\n");
      out.write("  box-shadow: 0px 1px 3px #2196F3;\r\n");
      out.write("}\r\n");
      out.write(".login:not(.loading) button:focus {\r\n");
      out.write("  border-bottom-width: 4px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("footer {\r\n");
      out.write("  display: block;\r\n");
      out.write("  padding-top: 50px;\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  color: #ddd;\r\n");
      out.write("  font-weight: normal;\r\n");
      out.write("  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.2);\r\n");
      out.write("  font-size: 0.8em;\r\n");
      out.write("}\r\n");
      out.write("footer a, footer a:link {\r\n");
      out.write("  color: #fff;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"wrapper\">\r\n");
      out.write("      <form class=\"login\"method=\"post\" action=\"\" >\r\n");
      out.write("    <p class=\"title\">Log in</p>\r\n");
      out.write("    <input type=\"text\" name=\"username\" placeholder=\"Username\" />\r\n");
      out.write("    <i class=\"fa fa-user\"></i>\r\n");
      out.write("    <input type=\"password\" name=\"password\" placeholder=\"Password\" />\r\n");
      out.write("    <i class=\"fa fa-key\"></i>\r\n");
      out.write("    <a href=\"forgot1.jsp\">Forgot your password?</a>\r\n");
      out.write("    <input type=\"submit\" name=\"submit\" id=\"submit\" value=\"Submit\" />\r\n");
      out.write("      <i class=\"spinner\"></i>\r\n");
      out.write("      <span class=\"state\"></span>\r\n");
      out.write("    \r\n");
      out.write("  </form>\r\n");
      out.write("  <footer><a target=\"blank\" href=\"http://boudra.me/\"></a></footer>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("    <script  src=\"file:///F|/Login Templates/animated-login-form/js/index.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
 
    
    if(request.getParameter("submit")!=null)
    {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        out.print(username);
        out.print(password);
        
        dbquery db=new dbquery();
        ResultSet rs=db.login(username, password);
        if(rs.next())
        {
            String lid=rs.getString("login_id");
          String type=rs.getString("type");
            session.setAttribute("lid", lid);
             session.setAttribute("type", type);
             if(type.equalsIgnoreCase("admin"))
             {
                response.sendRedirect("adminhome.jsp");
             }
             else if(type.equalsIgnoreCase("commando"))
             {
                 response.sendRedirect("chome.jsp");
             }
             else if(type.equalsIgnoreCase("military_officer"))
             {
                 response.sendRedirect("Mo_home.jsp");
             }
//            
//        
//        
       
            
        }
        else
        {
//            
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            ");

      }
    }


      out.write("\r\n");
      out.write("\r\n");
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
