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
            if(document.getElementById("complaint").value=="")
	{
		
		document.getElementById("a").style.visibility="visible";
		flag= false;
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
  <table width="348" height="188" border="0">
    <tr>
      <td>Complaint</td>
      <td><label for="complaint"></label>
      <textarea name="complaint" id="complaint" cols="45" rows="5"></textarea></td>
      <td><div style="visibility: hidden" id="a"><font color="red">Invalid Entry!!!</font></div></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
              <input type="submit" name="send" id="send" value="Send" onclick="return valid()" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
<% 
   // String cid=request.getParameter("id");
    if(request.getParameter("send")!=null)
    {
        String cid=session.getAttribute("lid").toString();
       // out.print(cid);
        String complaint=request.getParameter("complaint");
        dbquery db=new dbquery();
        int i=db.complaint_add(complaint, cid);
                
        if(i>0)
        {
        %>
        <script>
            
            alert("send successfully");
                </script>
        <%
    }
    else
    {
        %>
        <script>
            alert("send failed");
        </script>
            <%
    }
         }
    
%>
<%@include file="footer.jsp" %>
    