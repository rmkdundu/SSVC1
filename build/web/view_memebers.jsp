<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
    <table width="641" border="0">
      <tr>
        <td width="73">Team </td>
        <td width="558"><label>
            <select name="select"> <%
          dbquery db=new dbquery();
          int i=1;
          ResultSet rs1=db.team_view();
          while(rs1.next())
          
          {
      %>
              <option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
              <%
          }
              %>
            </select>
        <input type="submit" name="button" id="submit" value="Submit" </label></td>
      </tr>
          <tr>
              <td height="28" colspan="2"></input></td>
          </tr>
           </table>
          <%
          if(request.getParameter("button")!=null)
          {
              String id=request.getParameter("select");
          
          ResultSet rs=db.ad_team(id);
          if(rs.next())
          {
              
          
          %>
  </div>
        
  <div align="center">
    <table width="435" height="111" border="1">
        <tr id="tr_style">
          <td width="101" height="52">Sl.no</td>
          <td width="200">Name</td>
          <td width="200">Address</td>
          <td width="200">Email</td>
          <td width="200"></td>
                
      </tr>
        <%
      
      do{
          
%>
      <tr>
          <td height="51"><%=i++%></td>
          <td><%=rs.getString("name") %></td>
          <td><%=rs.getString("place")+"\n"+rs.getString("post")+"\n"+rs.getString("district")+"\n"+rs.getString("state") %></td>
          <td><%= rs.getString("email") %></td> 
          <td><img src="c_pic/<%=rs.getString("image")%>" height="150" width="100"/></td>
      </tr>
  <%

      }while(rs.next());
%>
    </table>
       <%  } }%>
  </div>
  <p>&nbsp;</p>
 
</form>
</body>
</html>
     <%@include file="footer.jsp" %>
