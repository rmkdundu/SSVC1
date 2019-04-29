<%@page import="java.lang.String"%>
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
  <table width="754" height="251" border="1">
      <tr id="tr_style">
      <td width="59" height="53"><div align="center">S.NO</div></td>
      <td width="126"><div align="center">DATE</div></td>
      <td width="174"><div align="center">PHOTO</div></td>
      <td width="117"><div align="center">NAME</div></td>
     
      <td width="128"><div align="center">COMPLAINT</div></td>
      <td>&nbsp;</td>
    </tr>
      <% 
          String lid=session.getAttribute("lid").toString();
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs=db.complaint_view(lid);
          while(rs.next())
          {
                  
      %>
    <tr>
                <td height="190"><%= i %></td>
      <td><%=rs.getString("complaint_date")%></td>
       <td><img src="c_pic/<%=rs.getString("image")%>" name="ImageField"  height="150" width="150"/></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("compliaint")%></td>
      <td width="110">
      <%
      String r=rs.getString("reply");
      if(r.equalsIgnoreCase("pending"))
      {
      %>
          <a href="mo_sndrply.jsp?id=<%=rs.getString(7)%>">Reply</a>
      <%
      }else{
          out.print(r);
      }
      %>
      </td>
    </tr>
    <%
    i++;  }
    %>
  </table>
</form>
</body>
</html>
    <%@include file="footer.jsp" %>