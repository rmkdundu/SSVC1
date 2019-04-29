<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
    <%@include file="header.jsp" %>
     <%
    
      response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null){
      
      response.sendRedirect("login1.jsp");
  }
  
    %>
<body>
<form id="form1" name="form1" method="post" action="">
<!--  <table width="200" border="1">
    <tr>
        <td><a href="cmdo_viewprofile.jsp">View Profile</a></td>
    </tr>
    <tr>
      <td><a href="cmdo_viewteam.jsp">View Team</a></td>
    </tr>
    <tr>
      <td><a href="cmdo_sndcmplnt.jsp">Send Complaint</a></td>
    </tr>
    <tr>
      <td><a href="cmdo_viewrply.jsp">View Reply</a></td>
    </tr>
  </table>-->
</form>
</body>
</html>

    <%@include file="footer.jsp" %>