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
    <div id="form1">
        <table width="938" height="183" border="1" align="center">
            <tr id="tr_style">
      <td width="68" height="71"><div align="center">s.no</div></td>
      <td width="124"><div align="center">NAME</div></td>
      <td width="141"><label>
        <div align="center">PLACE        </div>
      </label></td>
      <td width="141"><div align="center">POST</div></td>
      <td width="141"><div align="center">PIN</div></td>
      <td width="141"><div align="center">DISTRICT</div></td>
      <td width="141"><div align="center">STATE</div></td>
      <td width="141"><div align="center">GENDER</div></td>
      <td width="125"><div align="center">IMAGE</div></td>
      <td width="115"><div align="center">DOB</div></td>
      <td width="104"><div align="center">EMAIL ID </div></td>
           
      <td></td>
     <!-- <td width="96"><div align="center">BATTALIAN</div></td>-->
    </tr>
   
      <%
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs=db.cmdo_view();
          while(rs.next())
          
          {
      %>
      <tr>
          <td height="220"><%= i %></td>
          <td><%=rs.getString("name")%></td>
           <td><%=rs.getString("place")%></td>
           <td><%=rs.getString("post")%></td>
           <td><%=rs.getString("pin")%></td>
           <td><%=rs.getString("district")%></td>
           <td><%=rs.getString("state")%></td>
           <td><%=rs.getString("gender")%></td>
           <td><a href="c_pic/<%=rs.getString("image")%>"><img src="c_pic/<%=rs.getString("image")%>" height="150" width="100"/></a></td>
            <td><%=rs.getString("dob")%></td>
             <td><%=rs.getString("email")%></td>
             <td><a href="delete.jsp?id=<%=rs.getString(1)%>">Delete</a><br>
                  <a href="adupdtecmndo.jsp?id=<%=rs.getString("clogin_id")%>"> Update</a> </td>
      </tr>
              <% i++; } %>   
  </table>
    </div>
</form>
</body>
</html>
              <%@include file="footer.jsp" %>
