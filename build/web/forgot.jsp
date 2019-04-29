<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>forgot page</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="200" border="1">
    <tr>
      <td>Email</td>
      <td><label for="textfield"></label>
      <input type="text" name="email" id="textfield" /></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="send" id="button" value="Submit" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>

<%
    int i=0;
    if(request.getParameter("send")!=null)
    {
        String email=request.getParameter("email");
        dbquery dbc=new dbquery();
        int k=dbc.forgot_view(email);
        if(k>0) 
      {

    
 %>
               <script>
                   alert(" check your email");
                   window.location="";
               </script>
               
               <%
      }
      else
      {
          %>
          <script>
              alert(" Please Try Again");
              window.location="forgot1.jsp";
          </script>
          <%
      }
    }
          %>
       