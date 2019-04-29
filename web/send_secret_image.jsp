<%-- 
    Document   : send_secret_image
    Created on : 17 Apr, 2019, 11:23:30 AM
    Author     : Nidhin lal cv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="up_secret.jsp" method="post" enctype="multipart/form-data" name="form1">
            <input type="hidden" value="<%=request.getParameter("rid")%>" name="rid"/>
      <table width="343" border="1" align="center">
        <tr>
          <td>Choose File</td>
          <td><label for="fileField"></label>
          <input type="file" name="file" id="fileField"></td>
        </tr>
        <tr>
          <td colspan="2"><div align="center">
            <input type="submit" name="button" id="button" value="Submit">
          </div></td>
        </tr>
      </table>
    </form>
    <h1>&nbsp;</h1>
    </body>
</html>

    <%@include file="footer.jsp" %>