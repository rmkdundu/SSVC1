<%@page import="mypackage.dbquery"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
    

    <%@include file="header.jsp" %>
<body>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
    <div id="form1" align="center">
         <div class="col-md-6 mx-auto mb-5 section-heading" >
        <h2><font color="blue">PROFILE</font></h2>
        <p>&nbsp;</p>
        <table width="628" height="371" border="0">
      <%
          dbquery db=new dbquery();
          String tid=session.getAttribute("lid").toString();
          ResultSet rs=db.military_view(tid);
          if(rs.next())
          {
          %>
    <tr>
      <td colspan="2"><div align="center">
              <input type="image" readonly name="imageField" id="imageField"<img src="c_pic/<%=rs.getString("image")%>" height="100" width="150"/>
      </div></td>
    </tr>
    <tr>
        <td width="240" height="58"><font color="blue">Name</font></td>
      <td width="378"><label for="name"></label>
          <input type="text" readonly name="name" id="name" value="<%= rs.getString("name")%>" /></td>
    </tr>
    <tr>
        <td><font color="blue">Place</font></td>
      <td><label>
              <input type="text" readonly name="textfield" value="<%= rs.getString("place")%>" />
      </label></td>
    </tr>
    <tr>
        <td><font color="blue">Post</font></td>
      <td><label>
              <input type="text" readonly name="textfield2" value="<%= rs.getString("post")%>"/>
      </label></td>
    </tr>
    <tr>
        <td><font color="blue">Pin</font></td>
      <td><label>
              <input type="text" readonly name="textfield3" value="<%= rs.getString("pin")%>" />
      </label></td>
    </tr>
    <tr>
        <td><font color="blue">District</font></td>
      <td><label>
              <input type="text" readonly name="textfield4"  value="<%= rs.getString("district")%>"/>
      </label></td>
    </tr>
    <tr>
        <td><font color="blue">State</font></td>
      <td><label>
              <input type="text" readonly name="textfield5" value="<%= rs.getString("state")%>" />
      </label></td>
    </tr>
   <tr>
       <td><font color="blue">Gender</font></td>
      <td> <input type="radio"  readonly name="radio"  id="male" value="male" <%if(rs.getString("gender").equalsIgnoreCase("male")){%> checked="checked" <%}%> />
      <label for="male">male
          <input type="radio" readonly name="radio" id="female" value="female" <%if(rs.getString("gender").equalsIgnoreCase("female")){%> checked="checked"<% }%> />
      female      </label></td>
    </tr>
    <tr>
        <td height="58"><font color="blue">DOB</font></td>
      <td><label>
              <input type="text" readonly name="dob"  value="<%= rs.getString("dob")%>"/>
      </label></td>
    </tr>
    <tr>
        <td height="58"><font color="blue">Email</font></td>
      <td><label>
              <input type="email" readonly name="email" value="<%= rs.getString("email")%>" />
          </label>  </td>     
    </tr>
  </table>
<%} %>
    </div>
    </div>
</form>
</body>
</html>
<%@include file="footer.jsp" %>