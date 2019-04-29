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
  <table width="1184" height="178" border="1">
      <tr id="tr_style">
      <td width="110" height="81"><div align="center">S.NO</div></td>
      <td width="117"><div align="center">NAME</div></td>
      <td width="104"><div align="center">PLACE</div></td>
      <td width="89"><div align="center">POST</div></td>
      <td width="100"><div align="center">PIN</div></td>
      <td width="95"><div align="center">DISTRICT</div></td>
      <td width="98"><div align="center">STATE</div></td>
      <td width="101"><div align="center">GENDER</div></td>
      <td width="100"><div align="center">IMAGE</div></td>
      <td width="100"><div align="center">DOB</div></td>
      <td width="100"><div align="center">EMAIL</div></td>
    </tr>
    <%
          dbquery db=new dbquery();
          int i=0;
          String cid=session.getAttribute("lid").toString();
          
          ResultSet rs=db.meme_view(cid);
          while(rs.next())
          {
      i++;
      %>
    <tr>
      <td><%= i%></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("place")%></td>
      <td><%=rs.getString("post")%></td>
      <td><%=rs.getString("pin")%></td>
      <td><%=rs.getString("district")%></td>
      <td><%=rs.getString("state")%></td>
      <td><%=rs.getString("gender")%></td>
      <td><img src="c_pic/<%=rs.getString("image")%>" name="ImageField"  height="150" width="150"/></td>
      <td><%=rs.getString("dob")%></td>
      <td><%=rs.getString("email")%></td>
    </tr>
     <% }
    %>
  </table>
</form>
</body>
</html>
    <%@include file="footer.jsp" %>