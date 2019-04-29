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
      
      %>
      <script>
          window.location="login1.jsp";
      </script>
     
      <%
  }
  
    %>
<body>
<form id="form1" name="form1" method="post" action="">
   
    <% 
        String tid="";
        String cid=session.getAttribute("lid").toString();
    dbquery db=new dbquery();
    ResultSet rs=db.teammem_view(cid);
    if(rs.next())
    {
    %>
    
  
  <h3>Team Name : <%=rs.getString("tname")%></h3>
  <h3>Head  : <%=rs.getString("name")%></h3>
  
  
  
  <div align="center">
    <%
    }
    %>
    
    <table width="674" height="223" border="1">
      
        <tr id="tr_style">
        <td width="89" height="61"><div align="center">S.NO</div></td>
        <td width="274"><div align="center">PHOTO</div></td>
        <td width="205"><div align="center">MEMBER NAME</div></td>
        <td width="78"><div align="center">EMAIL</div></td>
      </tr>
      <%
   ResultSet rs2=db.mem_view(cid);
   int i=1;
   while(rs2.next())
   {
    %>
      <tr>
        <td height="68"><%=i%></td>
        <td><img src="c_pic/<%=rs2.getString("image")%>" name="ImageField"  height="150" width="150"/></td>
        <td><%=rs2.getString("name")%></td>
        <td><%=rs2.getString("email")%></td>
        <%
        if(!cid.equals(rs2.getString("Clogin_id"))){
        %>
        <td width="78"><div align="center"><a href="chatform.jsp?uid=<%=rs2.getString("Clogin_id")%>">chat</a></div></td>
      
      <%
        }
      %>
      </tr>
      <%
    i++;} 
   %>
      
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      </table>
  </div>
 
</form>
</body>
</html>
   <%@include file="footer.jsp" %>