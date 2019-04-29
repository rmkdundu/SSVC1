<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

    <script>
        function valid()
        {
            var flag=true;
             if(document.getElementById("reply1").value=="")
	{
            flag=false;
            document.getElementById("a").style.visibility="visible";
    	
 	}
        else
        {
            document.getElementById("a").style.visibility="hidden";
        }
            return flag;
        }
    </script>
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
  <table width="562" height="166" border="0">
    <tr>
      <td width="98"><div align="center">Reply</div></td>
      <td width="321"><label for="reply"></label>
      <textarea name="reply" id="reply1" cols="45" rows="5"></textarea></td>
      <td width="121"><div style="visibility: hidden" id="a"><font color="red">Invalid Entry!!!</font></div></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
              <input type="submit" name="submit" id="button" value="Send" onclick="return valid()" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
<% 
    String cid=request.getParameter("id");
if(request.getParameter("submit")!=null)
{
    String reply=request.getParameter("reply");
    dbquery db=new dbquery();
    int i=db.reply_add(reply,cid);
     
    if(i>0)
    {
        %>
        <script>
            
            alert("submit successfully");
                </script>
        <%
    }
    else
    {
        %>
        <script>
            alert(" failed");
        </script>
            <%
    }
    
    }
    
%>
<%@include file="footer.jsp" %>
