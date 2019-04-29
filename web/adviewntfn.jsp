<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
  <div align="center">
    <table width="672" height="148" border="1">
        <tr id="tr_style">
        <td width="117" height="72"><div align="center">S.NO</div></td>
        <td width="155"><div align="center">NOTIFICATION</div></td>
        <td width="112"><div align="center">SEND DATE</div></td>
        <td width="129"><div align="center">SEND TIME</div></td>
        <td width="125"></td>
      </tr>
      <%
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs=db.notification_view();
          while(rs.next())
          
          {
      %>
      <tr>
        
        <tr>
          <td height="68"><div align="center"><%= i %></div></td>
          <td><%=rs.getString("notification")%></td>
          <td><%=rs.getString("date")%></td>
          <td><%=rs.getString("time")%></td>
          <td><div align="center"><a href="notification_delete.jsp?id=<%=rs.getString(1)%>">Delete</a><br>
          </div>
      </tr>
      <% i++; } %> 
    </table>
  </div>
</form>
</body>
</html>
    <%@include file="footer.jsp" %>