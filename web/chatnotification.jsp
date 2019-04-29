<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>chat notification page</title>
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
  <table width="336" border="1">
    <tr>
      <td width="96" height="69">S.No</td>
      <td width="224">Sender Name</td>
    </tr>
      <%
        String lid=session.getAttribute("lid").toString();

       dbquery db=new dbquery();
       ResultSet rs=db.chatnoti(lid);
       int i=1;
       while(rs.next())
       {
          
        %>
    <tr>
      <td height="187"><%=i%></td>
      <td><a href="chatform.jsp?uid=<%=rs.getString(2)%>"><%=rs.getString(1)%></a></td>
    </tr>
     <%
     i++;
       }%>
  </table>
       
</form>
</body>
</html>
       <%@include file="footer1.jsp" %>
