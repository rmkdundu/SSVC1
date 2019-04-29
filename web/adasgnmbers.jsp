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
  <table width="264" height="169" border="1">
    <tr>
      <td><div align="center">Name</div></td>
      <td><label for="select"></label>
        <select name="select" id="select">
      </select></td>
    </tr>
       <% 
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs=db.commando_view();
          while(rs.next())
          {
      
      %>
       <option value="<%=rs.getString(6)%>"><%=rs.getString(2)%></option>
                <%
                }
                %>
    <tr>
      <td><div align="center">Team</div></td>
      <td><label for="select2"></label>
        <select name="select2" id="select2">
      </select></td>
    </tr>
     <% 
          
          ResultSet rs1=db.team_view();
          while(rs1.next())
          {
      
      %>
       <option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
                <%
                }
                %>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="submit" id="submit" value="Submit" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
    <% 
    
    if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("select");
        String team=request.getParameter("select");
       
        
        if(i>0)
        {
            %>
            <script> 
            alert("successfully added");
                    </script>
            <%
        }
        else
        {
            %>
            <script>
                alert("failed");
            </script>
            <%
        }
    }
    
%>

<%@include file="footer.jsp" %>