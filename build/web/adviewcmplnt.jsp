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
  <table width="829" height="232" border="1">
      <tr id="tr_style">
      <td width="98" height="66"><div align="center">S.NO</div></td>
      <td width="144"><div align="center">USERNAME</div></td>
      <td width="105"><div align="center">PHOTO</div></td>
    <!--  <td width="116"><div align="center">EMAIL</div></td>-->
      <td width="118"><div align="center">COMPLAINT</div></td>
      <td width="101"><div align="center">DATE</div></td>
      <td width="101"><div align="center">REPLY</div></td>
    </tr>
      <td></td>
       <%
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs=db.cmplt_view();
          while(rs.next())
          
          {
      %>
      <tr>
          <td height="154"><div align="center"><%= i %></div></td>
        <td><%=rs.getString("email")%></td>
           <td><div align="center"><img src="c_pic/<%=rs.getString("image")%>" name="ImageField"  height="150" width="150"/></div></td>
          
      <td><%=rs.getString("compliaint")%></td>
      <td><%=rs.getString("complaint_date")%></td>
      <td><%=rs.getString("reply")%></td>
     
     
    </tr>
           <%i++;}%>
  </table>
</form>
</body>
</html>
           <%@include file="footer.jsp" %>