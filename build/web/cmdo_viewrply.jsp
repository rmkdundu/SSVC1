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
    <table width="691" height="209" border="1">
      <tr id="tr_style">
      <td width="48"><div align="center">S.NO</div></td>
      <td width="115"><div align="center">COMPLAINT</div></td>
      <td width="86"><div align="center">DATE</div></td>
      <td width="148"><div align="center">REPLY</div></td>
      <td width="118"><div align="center">REPLY DATE</div></td>
    </tr>
    <% 
        dbquery db=new dbquery();
    int i=1;
    String cid=session.getAttribute("lid").toString();
          ResultSet rs=db.cmplnt_view(cid);
         while(rs.next())
          {
    %>
    <tr>
         <td><%=i++%></td>
      <td><%=rs.getString("compliaint")%></td>
      <td><%=rs.getString("complaint_date")%></td>
      <%
       String rp=rs.getString("reply");
       if(rp.equalsIgnoreCase("pending"))
       {
      
      %>
      <td><p>not replied yet</p></td>
      <td><p>not replied yet</p></td>
      <%  }else{ %>
      <td width="49"><%=rs.getString("reply")%></td>
      <td width="81"><%=rs.getString("reply_date")%></td>
      
    </tr>
      <% i++; } } %>
  </table>
</form>
</body>
</html>
      <%@include file="footer.jsp" %>