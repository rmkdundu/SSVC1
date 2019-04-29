<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
    <%
    
      response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null){
      %>
      <script type="text/javascript">
          window.location="http://localhost:8080/SSVC/login1.jsp";
          </script>
      <%
  }
  
    %>
    <%@include file="header.jsp" %>
    
<body> 
<form id="form1" name="form1" method="post" action="">
 <!--<table width="200" border="1">
     <tr><td> <a href="about.jsp"> About</a> </td></tr>
    <tr>
        <td><a href="adcommando.jsp">Add commando</a></td>
    </tr>
    <tr>
      <td><a href="adviewcmndo.jsp">View Commando</a></td>
    </tr>
    <tr>
      <td><a href="adupdtecmndo">Update Commando</a></td>
    </tr>
    <tr>
      <td><a href="adteam.jsp">Create Team</a></td>
    </tr>
   <tr><td><a href="about.jsp">About </a></td></tr>
      <tr>
      <td><a href="add_member.jsp">Assign Members</a></td>
    </tr>
    <tr>
      <td><a href="view_memebers.jsp">View Team Members</a></td>
    </tr>
    
    <tr>
      <td><a href="view_members.jsp">View Members</a></td>
    </tr>
    <tr>
      <td><a href="adsndntfn.jsp">Send Notification</a></td>
    </tr>
    <tr>
      <td><a href="adviewntfn.jsp">View Notifications and Updates</a></td>
    </tr>
    <tr>
      <td><a href="adviewcmplnt.jsp">View Complaints and Reply</a></td>
    </tr>
  </table>-->
</form>
</body>
</html>
 <%@include file="footer.jsp" %>
