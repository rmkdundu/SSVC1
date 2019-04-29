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
       <div class="col-md-6 mx-auto mb-5 section-heading" >
    <table width="721" height="174" border="1">
        <tr id="tr_style">
        <td width="121" height="62"><div align="center">S.NO</div></td>
        <td width="182"><div align="center">DATE</div></td>
        <td width="170"><div align="center">TIME</div></td>
        <td width="220"><div align="center">NOTIFICATION</div></td>
      </tr>
      <%
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs= db.notification_view();
          while(rs.next())
          {
          %>
      
      <tr>
        <td height="104"><%= i %></td>
        <td><%=rs.getString("date")%></td>
        <td><%=rs.getString("time")%></td>
        
        
        
        
        
        
        <td><%=rs.getString("notification")%></td>
        
        
      </tr>
      <% i++;} %>
    </table>
  </div>
  </div>
</form>
</body>
</html>
      <%@include file="footer.jsp" %>