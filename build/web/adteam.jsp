<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
     <script type="text/javascript">

 
 
	
	function validate()
	{
            //alert(document.getElementById("dis").value)
    var flag=true;
	
 if(document.getElementById("tname").value=="")
	{
		
		document.getElementById("a").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("a").style.visibility="hidden";
	}
	
 if(document.getElementById("select").value=="-1")
	{
		
		document.getElementById("b").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("b").style.visibility="hidden";
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
    <div id="form1">
  <table width="519" height="205" border="0">
    <tr>
      <td width="157">Team Name</td>
      <td width="192"><label for="name"></label>
      <input type="text" name="tname" id="tname" /></td>
       <td width="156">
	    <div id="a" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    <tr>
      <td>Head</td>
      <td><label for="select"></label>
        <select name="select" id="select">
            <option value="-1">--select--</option>
            <%
                dbquery db =new dbquery();
                ResultSet rs=db.commando_view();
                while(rs.next())
                {
                %>
                <option value="<%=rs.getString(10)%>"><%=rs.getString(2)%></option>
                <%
                }
                %>
      </select></td>
        <td width="156">
	    <div id="b" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
      
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="submit" id="submit" value="Submit" onclick="return validate()"/>
      </div></td>
    </tr>
  </table>
    </div>
</form>
</body>
    </center>
</html>
<% 
    
    if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("tname");
        String head=request.getParameter("select");
       
        int i=db.adteam_add(name,head);
        if(i>0)
        {
            %>
            <script> 
            alert("successfully added");
            window.location("adteam.jsp")
                    </script>
            <%
        }
        else
        {
            %>
            <script>
                alert("failed");
                window.location("adteam.jsp")
            </script>
            <%
        }
    }
    
%>
<%@include file="footer.jsp" %>
