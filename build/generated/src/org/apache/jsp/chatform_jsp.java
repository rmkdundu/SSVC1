package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import mypackage.dbquery;

public final class chatform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <script src=\"newjavascript.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("  var xmlHttp;\r\n");
      out.write("            function shows(mid){\r\n");
      out.write("                var a=document.getElementById(mid).value;\r\n");
      out.write("\t\t\t\tvar b=document.getElementById(\"fid\").value;\r\n");
      out.write("\t\t\t\tvar c=document.getElementById(\"tid\").value;\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("              if (typeof XMLHttpRequest != \"undefined\"){\r\n");
      out.write("                xmlHttp= new XMLHttpRequest();\r\n");
      out.write("                }\r\n");
      out.write("                else if (window.ActiveXObject){\r\n");
      out.write("                    xmlHttp= new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n");
      out.write("                }\r\n");
      out.write("                if (xmlHttp==null){\r\n");
      out.write("                    alert(\"Browser does not support XMLHTTP Request\")\r\n");
      out.write("                    return;\r\n");
      out.write("                }\r\n");
      out.write("                var url=\"formclick.jsp?c=\"+a+\"&d=\"+b+\"&e=\"+c;\r\n");
      out.write("                //alert(url)\r\n");
      out.write("                xmlHttp.onreadystatechange = stateChange;\r\n");
      out.write("               \r\n");
      out.write("                 xmlHttp.open(\"GET\", url, true);\r\n");
      out.write("                xmlHttp.send(null);\r\n");
      out.write("        \r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("         function stateChange(){\r\n");
      out.write("              if(xmlHttp.readyState==4 || xmlHttp.readyState==\"complete\"){\r\n");
      out.write("//                    document.getElementById(\"nm\").innerHTML=xmlHttp.responseText \r\n");
      out.write("//                    var x=xmlHttp.responseText;\r\n");
      out.write("//                    var a=x.split('#');\r\n");
      out.write("//                    document.getElementById(\"bcon\").value=a[0];\r\n");
      out.write("//                    document.getElementById(\"badd\").value=a[1];\r\n");
      out.write("                   document.getElementById(\"txt\").innerHTML=xmlHttp.responseText; \r\n");
      out.write("                   document.getElementById(\"mg\").value=\"\";\r\n");
      out.write("                   \r\n");
      out.write("                  // alert(\"haii\");\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("            \r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write(" \t $(\"#chat\").load(\"ShowChat.jsp\");\r\n");
      out.write("   var refreshId = setInterval(function() \r\n");
      out.write("   {\r\n");
      out.write("      $(\"#chat\").load('ShowChat.jsp');\r\n");
      out.write("   }, 1000);\r\n");
      out.write("   $.ajaxSetup({ cache: false });\r\n");
      out.write("   \r\n");
      out.write("        var rowpos = $('#tbl tr:last').position();\r\n");
      out.write("\r\n");
      out.write("        $('#chat').scrollTop(rowpos.top);\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Chat with patient</title>\r\n");
      out.write("</head>\r\n");
      out.write("   ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <title>INDIAN ARMY &mdash; Colorlib Website Template</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display:400,700|Work+Sans:300,400,700\" rel=\"stylesheet\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/icomoon/style.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/jquery-ui.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/animate.css\">\r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css\">\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/flaticon/font/flaticon.css\">\r\n");
      out.write("  \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/aos.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("    \r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("  \r\n");
      out.write("  <div class=\"site-wrap\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"site-mobile-menu\">\r\n");
      out.write("      <div class=\"site-mobile-menu-header\">\r\n");
      out.write("        <div class=\"site-mobile-menu-close mt-3\">\r\n");
      out.write("          <span class=\"icon-close2 js-menu-toggle\"></span>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"site-mobile-menu-body\"></div>\r\n");
      out.write("    </div> <!-- .site-mobile-menu -->\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <div class=\"site-navbar-wrap js-site-navbar bg-white\">\r\n");
      out.write("      \r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"site-navbar bg-light\">\r\n");
      out.write("          <div class=\"py-1\">\r\n");
      out.write("            <div class=\"row align-items-center\">\r\n");
      out.write("              <div class=\"col-2\">\r\n");
      out.write("                <h2 class=\"mb-0 site-logo\"><a href=\"index.html\">Indian Army</a></h2>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-10\">\r\n");
      out.write("                <nav class=\"site-navigation text-right\" role=\"navigation\">\r\n");
      out.write("                  <div class=\"container\">\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"d-inline-block d-lg-none  ml-md-0 mr-auto py-3\"><a href=\"#\" class=\"site-menu-toggle js-menu-toggle\"><span class=\"icon-menu h3\"></span></a></div>\r\n");
      out.write("                    \r\n");
      out.write("                    ");

                    String type=session.getAttribute("type").toString();
                    
                    if(type.equalsIgnoreCase("admin"))
                    {
                    
                    
                    
                    
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    <ul class=\"site-menu js-clone-nav d-none d-lg-block\">\r\n");
      out.write("                      <li class=\"\">\r\n");
      out.write("                        <a href=\"adminhome.jsp\">Home</a>\r\n");
      out.write("                     \r\n");
      out.write("                         <a href=\"adcommando.jsp#form1\">Add Commando</a>\r\n");
      out.write("                      </li>\r\n");
      out.write("                     \r\n");
      out.write("                      <li><a href=\"adteam.jsp#form1\">Create Team</a></li>\r\n");
      out.write("                      <li><a href=\"add_member.jsp#form1\">Assign members</a></li>\r\n");
      out.write("                     \r\n");
      out.write("                       <li><a href=\"adsndntfn.jsp#form1\">Send Notification</a></li>\r\n");
      out.write("                     <!-- <li class=\"active\"><a href=\"contact.html\">Contact</a></li>-->\r\n");
      out.write("                      <li class=\"has-children\">\r\n");
      out.write("                          <a href=\"\">View</a>\r\n");
      out.write("                        <ul class=\"dropdown arrow-top\">\r\n");
      out.write("                            <li> <a href=\"adviewcmndo.jsp#form1\"> Commandos</a></li>\r\n");
      out.write("                          <li><a href=\"view_memebers.jsp#form1\"> Team Members</a></li>\r\n");
      out.write("                          <li><a href=\"adviewntfn.jsp#form1\"> Notification & Updates</a></li>\r\n");
      out.write("                          <li><a href=\"adviewcmplnt.jsp#form1\">Complaints & Reply</a></li>\r\n");
      out.write("                          <li class=\"has-children\">\r\n");
      out.write("                          <!--  <a href=\"classes.html\">More</a>\r\n");
      out.write("                            <ul class=\"dropdown\">\r\n");
      out.write("                              <li><a href=\"classes.html\">Yoga Dance</a></li>\r\n");
      out.write("                              <li><a href=\"classes.html\">Bare Workout</a></li>\r\n");
      out.write("                              <li><a href=\"classes.html\">Peace of Mind</a></li>\r\n");
      out.write("                            </ul>-->\r\n");
      out.write("                          </li>\r\n");
      out.write("                          \r\n");
      out.write("                        </ul>\r\n");
      out.write("                      </li>\r\n");
      out.write("                      <li><a href=\"logout.jsp\">Logout</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    ");

                    }
                    
                    else if(type.equalsIgnoreCase("commando"))
                    {
                        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                          <ul class=\"site-menu js-clone-nav d-none d-lg-block\">\r\n");
      out.write("                      <li class=\"\">\r\n");
      out.write("                        <a href=\"chome.jsp\">Home</a>\r\n");
      out.write("                      </li>\r\n");
      out.write("                      \r\n");
      out.write("                      <li><a href=\"cmdo_viewprofile.jsp#form1\">Profile</a></li>\r\n");
      out.write("                      <li><a href=\"cmdo_viewteam.jsp#form1\">Team Members</a></li>\r\n");
      out.write("                      <li><a href=\"cmdo_sndcmplnt.jsp#form1\"> Send Complaint</a></li>\r\n");
      out.write("                        <li><a href=\"cmdo_viewrply.jsp#form1\">  Reply</a></li>\r\n");
      out.write("                     <!-- <li class=\"has-children\">\r\n");
      out.write("                        <a href=\"classes.html\">Yoga Classes</a>\r\n");
      out.write("                        <ul class=\"dropdown arrow-top\">\r\n");
      out.write("                          <li><a href=\"classes.html\">Yoga Dance</a></li>\r\n");
      out.write("                          <li><a href=\"classes.html\">Bare Workout</a></li>\r\n");
      out.write("                          <li><a href=\"classes.html\">Peace of Mind</a></li>\r\n");
      out.write("                         <li class=\"has-children\">\r\n");
      out.write("                            <a href=\"classes.html\">More</a>\r\n");
      out.write("                            <ul class=\"dropdown\">\r\n");
      out.write("                              <li><a href=\"classes.html\">Yoga Dance</a></li>\r\n");
      out.write("                              <li><a href=\"classes.html\">Bare Workout</a></li>\r\n");
      out.write("                              <li><a href=\"classes.html\">Peace of Mind</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                          </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                      </li>-->\r\n");
      out.write("                     <li><a href=\"logout.jsp\">Logout</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        ");

                    }
                    
                    else if(type.equalsIgnoreCase("military_officer"))
                    {
                        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        <ul class=\"site-menu js-clone-nav d-none d-lg-block\">\r\n");
      out.write("                      <li class=\"\">\r\n");
      out.write("                          <a href=\"Mo_home.jsp\">Home</a>\r\n");
      out.write("                      </li>\r\n");
      out.write("                       <li><a href=\"mo_prfleview.jsp#form1\">Profile</a></li>\r\n");
      out.write("                      <li><a href=\"mo_viewmbrs.jsp#form1\"> All Members</a></li>\r\n");
      out.write("                      <li><a href=\"mo_view_officers.jsp#form1\"> officers</a></li>\r\n");
      out.write("                      <li><a href=\"sec.jsp#form1\"> shared images</a></li>\r\n");
      out.write("                      <li><a href=\"mo_viewntfn.jsp#form1\">  Notifications</a></li>\r\n");
      out.write("                     <!-- <li class=\"has-children\">\r\n");
      out.write("                        <a href=\"classes.html\">Yoga Classes</a>\r\n");
      out.write("                        <ul class=\"dropdown arrow-top\">\r\n");
      out.write("                          <li><a href=\"classes.html\">Yoga Dance</a></li>\r\n");
      out.write("                          <li><a href=\"classes.html\">Bare Workout</a></li>\r\n");
      out.write("                          <li><a href=\"classes.html\">Peace of Mind</a></li>\r\n");
      out.write("                          <li class=\"has-children\">\r\n");
      out.write("                            <a href=\"classes.html\">More</a>\r\n");
      out.write("                            <ul class=\"dropdown\">\r\n");
      out.write("                              <li><a href=\"classes.html\">Yoga Dance</a></li>\r\n");
      out.write("                              <li><a href=\"classes.html\">Bare Workout</a></li>\r\n");
      out.write("                              <li><a href=\"classes.html\">Peace of Mind</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                          </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                      </li>-->\r\n");
      out.write("                     \r\n");
      out.write("                     <li><a href=\"mo_viewcmplnt.jsp#form1\">Complaints</a></li>\r\n");
      out.write("                     <li><a href=\"logout.jsp\">Logout</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        \r\n");
      out.write("                        ");

                    }
                    
      out.write("\r\n");
      out.write("                  </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  \r\n");
      out.write("      \r\n");
      out.write("      <div class=\"site-blocks-cover overlay\" style=\"background-image: url(images/hero_3.jpg);\" data-aos=\"fade\" data-stellar-background-ratio=\"0.5\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <div class=\"row align-items-center justify-content-center\">\r\n");
      out.write("            <div class=\"col-md-7 text-center\" data-aos=\"fade\">\r\n");
      out.write("              <h2 class=\"caption mb-2\">Join</h2>\r\n");
      out.write("              <h1 class=\"\">Indian Army</h1>\r\n");
      out.write("              \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>  \r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("    <div class=\"site-section site-section-sm\">\r\n");
      out.write("      <div class=\"container\" align=\"center\">\r\n");
      out.write("        <div class=\"row\" align=\"center\">\r\n");
      out.write("       \r\n");
      out.write("            <div class=\"col-md-12 col-lg-8 mb-5\" align=\"center\" >\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("    ");

    
    String did=request.getParameter("uid");
    session.setAttribute("Rid", did);
    String f_id=session.getAttribute("lid").toString();
    
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <form method=\"post\">\r\n");
      out.write("        <div style=\"overflow: auto;height: 140px; width: 330px;\" id=\"chat\" align=\"center\">\r\n");
      out.write("        </div >  \r\n");
      out.write("        \r\n");
      out.write("            <table style=\"width:300px\">\r\n");
      out.write("                    <tr><input name=\"t2\" id=\"fid\" value=\"");
      out.print(f_id);
      out.write("\" type=\"hidden\"  size=\"40\"/>\r\n");
      out.write("                    <input name=\"t3\" id=\"tid\" type=\"hidden\" value=\"");
      out.print(did);
      out.write("\"  size=\"40\"/>\r\n");
      out.write("                      <td width=\"229\"><input name=\"t1\" id=\"mg\" type=\"text\"  size=\"40\"/></td>\r\n");
      out.write("                      <td width=\"59\"><input type=\"button\" name=\"s1\" onClick=\"shows('mg')\"  value=\"Send\"/></td>\r\n");
      out.write("                    <div id=\"txt\"></div>\r\n");
      out.write("                    </tr>\r\n");
      out.write("            </table>        \r\n");
      out.write("   </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>   ");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("   <!-- <div class=\"site-section bg-light\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-md-6 mx-auto text-center mb-5 section-heading\">\r\n");
      out.write("            <h2 class=\"mb-5\">The Army</h2>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("          <div class=\"col-sm-6 col-md-5 col-lg-3\">\r\n");
      out.write("            <div class=\"text-center item\">\r\n");
      out.write("              <span class=\"\"></span>\r\n");
      out.write("              <h2 class=\"h5\"></h2>\r\n");
      out.write("              <p>The Indian Army has the biggest 'Voluntary' military force in the world.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-sm-6 col-md-5 col-lg-3\">\r\n");
      out.write("            <div class=\"text-center item\">\r\n");
      out.write("              <span class=\"\"></span>\r\n");
      out.write("              <h2 class=\"h5\"></h2>\r\n");
      out.write("              <p>The Indian Army has never initiated the first attack or engaged in military coup to gain power or govern a nation,</p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-sm-6 col-md-5 col-lg-3\">\r\n");
      out.write("            <div class=\"text-center item\">\r\n");
      out.write("              <span class=\"\"></span>\r\n");
      out.write("              <h2 class=\"h5\"></h2>\r\n");
      out.write("              <p>India ranks 4th in the list of global fire power, next only to USA,Russia and China.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-sm-6 col-md-5 col-lg-3\">\r\n");
      out.write("            <div class=\"text-center item\">\r\n");
      out.write("              <span class=\"\"></span>\r\n");
      out.write("              <h2 class=\"h5\"></h2>\r\n");
      out.write("              <p>The Indian army's High Altitude Warfare School (HAWS) is considered as one of the most most elite training centers in the world.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("           \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>-->\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("   <div></div>\r\n");
      out.write("   <div></div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <footer class=\"site-footer\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        \r\n");
      out.write("            <div class=\"site-blocks-cover overlay\" style=\"background-image: url(images/img_8.jpg);\" data-aos=\"fade\" data-stellar-background-ratio=\"0.5\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <div class=\"row align-items-center justify-content-center\">\r\n");
      out.write("            <div class=\"col-md-7 text-center\" data-aos=\"fade\">\r\n");
      out.write("\r\n");
      out.write("       <!-- <div class=\"row\">\r\n");
      out.write("          <div class=\"col-md-4\">\r\n");
      out.write("            <h3 class=\"footer-heading mb-4 text-white\">About</h3>\r\n");
      out.write("            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat quos rem ullam, placeat amet.</p>\r\n");
      out.write("            <p><a href=\"#\" class=\"btn btn-primary pill text-white px-4\">Read More</a></p>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-md-6\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-md-6\">\r\n");
      out.write("                <h3 class=\"footer-heading mb-4 text-white\">Quick Menu</h3>\r\n");
      out.write("                  <ul class=\"list-unstyled\">\r\n");
      out.write("                    <li><a href=\"#\">About</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Add commando</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Create Team</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Send Notification</a></li>\r\n");
      out.write("                    <li><a href=\"#\">View Commando</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Careers</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-md-6\">\r\n");
      out.write("                <h3 class=\"footer-heading mb-4 text-white\">Ministries</h3>\r\n");
      out.write("                  <ul class=\"list-unstyled\">\r\n");
      out.write("                    <li><a href=\"#\">Yoga for Health</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Yoga for Resilience</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Yoga Class</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Meditation</a></li>\r\n");
      out.write("                    <li><a href=\"#\">Mind Balance</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          \r\n");
      out.write("          <div class=\"col-md-2\">\r\n");
      out.write("            <div class=\"col-md-12\"><h3 class=\"footer-heading mb-4 text-white\">Social Icons</h3></div>\r\n");
      out.write("              <div class=\"col-md-12\">\r\n");
      out.write("                <p>\r\n");
      out.write("                  <a href=\"#\" class=\"pb-2 pr-2 pl-0\"><span class=\"icon-facebook\"></span></a>\r\n");
      out.write("                  <a href=\"#\" class=\"p-2\"><span class=\"icon-twitter\"></span></a>\r\n");
      out.write("                  <a href=\"#\" class=\"p-2\"><span class=\"icon-instagram\"></span></a>\r\n");
      out.write("                  <a href=\"#\" class=\"p-2\"><span class=\"icon-vimeo\"></span></a>\r\n");
      out.write("\r\n");
      out.write("                </p>\r\n");
      out.write("              </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>-->\r\n");
      out.write("        <div class=\"row pt-5 mt-5 text-center\">\r\n");
      out.write("          <div class=\"col-md-12\">\r\n");
      out.write("            <p>\r\n");
      out.write("            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("            Copyright &copy; <script data-cfasync=\"false\" src=\"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js\"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved  \r\n");
      out.write("            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\r\n");
      out.write("            </p>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </footer>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("  <script src=\"js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery-ui.js\"></script>\r\n");
      out.write("  <script src=\"js/popper.min.js\"></script>\r\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("  <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.stellar.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.countdown.min.js\"></script>\r\n");
      out.write("  <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n");
      out.write("  <script src=\"js/bootstrap-datepicker.min.js\"></script>\r\n");
      out.write("  <script src=\"js/aos.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  <script src=\"js/mediaelement-and-player.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <script src=\"js/main.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("  <script>\r\n");
      out.write("      document.addEventListener('DOMContentLoaded', function() {\r\n");
      out.write("                var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;\r\n");
      out.write("\r\n");
      out.write("                for (var i = 0; i < total; i++) {\r\n");
      out.write("                    new MediaElementPlayer(mediaElements[i], {\r\n");
      out.write("                        pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',\r\n");
      out.write("                        shimScriptAccess: 'always',\r\n");
      out.write("                        success: function () {\r\n");
      out.write("                            var target = document.body.querySelectorAll('.player'), targetTotal = target.length;\r\n");
      out.write("                            for (var j = 0; j < targetTotal; j++) {\r\n");
      out.write("                                target[j].style.visibility = 'visible';\r\n");
      out.write("                            }\r\n");
      out.write("                  }\r\n");
      out.write("                });\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
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
