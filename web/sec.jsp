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
  <table width="649" height="189" border="1">
    <tr>
      <td width="128"><div align="center">Name</div></td>
      <td width="115"><div align="center">Time</div></td>
      <td width="132"><div align="center">Image</div></td>
      <td width="122"><div align="center">Email</div></td>
    </tr>
      <%
      
      String lid=(String)session.getAttribute("lid");
      dbquery db=new dbquery();
      ResultSet rs=db.ViewImage(lid);
      while(rs.next()){
      %>
    <tr>
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(5)%> <%=rs.getString(4)%></td>
      <td><img src="watermarked/<%=rs.getString(3)%>"width="200" height="200"></img><br/>
          <a href="img.jsp?fname=<%=rs.getString(3)%>">view secret image</a></td>
      <td><%=rs.getString(6)%></td>
    </tr>
    <%
      }
    %>
  </table>
</form>
</body>
</html>
  
    <%@include file="footer.jsp" %>