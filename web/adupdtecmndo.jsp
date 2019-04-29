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
	
 if(document.getElementById("name").value=="")
	{
		
		document.getElementById("a").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("a").style.visibility="hidden";
	}
	
 if(document.getElementById("place").value=="")
	{
		
		document.getElementById("b").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("b").style.visibility="hidden";
	}
	if(document.getElementById("post").value=="")
	{
		
		document.getElementById("c").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("c").style.visibility="hidden";
	}
	if(document.getElementById("pin").value=="")
	{
		
		document.getElementById("d").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("d").style.visibility="hidden";
	}
//        
      if(document.getElementById("district").value=="")
	{
		
		document.getElementById("e").style.visibility="visible";
		flag= false;
	}
	  else
	{
	document.getElementById("e").style.visibility="hidden";
	}
	if(document.getElementById("state").value=="-1")
	{
		
		document.getElementById("f").style.visibility="visible";
		flag= false;
	}
        
	else
	{
	document.getElementById("f").style.visibility="hidden";
	}
         if(document.getElementById("date").value=="")

     {

          document.getElementById("g").style.visibility="visible";
		  flag= false;

     }
	  else
	{
	document.getElementById("g").style.visibility="hidden";
	}
	if(document.getElementById("upload").value=="")
	{
		
		document.getElementById("h").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("h").style.visibility="hidden";
	}
//         if(document.getElementById("username").value=="")
//
//     {
//
//          document.getElementById("i").style.visibility="visible";
//		  flag= false;
//
//     }
//	  else
//	{
//	document.getElementById("i").style.visibility="hidden";
//	}
//        if(document.getElementById("password").value.length!=10)
//
//     {
//
//          document.getElementById("j").style.visibility="visible";
//		  flag= false;
//
//     }
//	  else
//	{
//	document.getElementById("j").style.visibility="hidden";
//	}
//        
//        
//        if(document.getElementById("file").value=="")
//	{
//		
//		document.getElementById("i").style.visibility="visible";
//		flag= false;
//	}
//	else
//	{
//	document.getElementById("i").style.visibility="hidden";
//	}
//        if(document.getElementById("aadhar").value=="")
//	{
//		
//		document.getElementById("j").style.visibility="visible";
//		flag= false;
//	}
//        
//	else
//	{
//	document.getElementById("j").style.visibility="hidden";
//	}
//         if(document.getElementById("aadhar").value.length!=12)
//
//     {
//
//          document.getElementById("j").style.visibility="visible";
//		  flag= false;
//
//     }
//	  else
//	{
//	document.getElementById("j").style.visibility="hidden";
//	}
//	if(document.getElementById("username").value=="")
//	{
//		
//		document.getElementById("i").style.visibility="visible";
//		flag= false;
//	}
//	else
//	{
//	document.getElementById("i").style.visibility="hidden";
//	}
//         var emailPat =/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
//
//     var emailid=document.getElementById("username").value;
//
//     var matchArray = emailid.match(emailPat);
//
//     if (matchArray == null)
//
//    {
//
//              document.getElementById("i").style.visibility="visible";
//		  flag=false;
//	     }
//		  else
//	     {
//	      document.getElementById("i").style.visibility="hidden";
//	     }
//	if(document.getElementById("password").value=="")
//	{
//		
//		document.getElementById("j").style.visibility="visible";
//		flag= false;
//	}
//	else
//	{
//	document.getElementById("j").style.visibility="hidden";
//	}
//          
//        if(document.getElementById("password").value.length<6)
//
//     {
//
//          document.getElementById("j").style.visibility="visible";
//		  flag= false;
//
//     }
//	  else
//	{
//	document.getElementById("j").style.visibility="hidden";
//	}
//	
	
    return flag;

	}
</script> 
    
<%
    String id=request.getParameter("id");
    dbquery db=new dbquery();
    ResultSet rs=db.updt_view(id);
    if(rs.next())
    {
        
    
%>
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
<form action="upload2.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
    <div id="xx">
  <table width="641" height="380" border="0">
    <tr>
      <td width="153">Name</td>
      <td width="230"><label for="name"></label>
        <label>
        <input type="text" name="name" id="name" value="<%=rs.getString(2) %>"  />
          <input type="hidden" name="id" value="<%=id %>"  />
          <td width="175">
	    <div id="a" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
      </label></td>
    </tr>
    <tr>
      <td>Place</td>
      <td><label>
        <input type="text" name="place" id="place" value="<%=rs.getString(3) %>"/>
        <td width="175">
	    <div id="b" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
      </label></td>
    </tr>
    <tr>
      <td>Post</td>
      <td><label>
        <input type="text" name="post" id="post" value="<%=rs.getString(4)%>"/>
        <td width="175">
	    <div id="c" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
      </label></td>
    </tr>
    <tr>
      <td>Pin</td>
      <td><input type="text" name="pin" id="pin" value="<%=rs.getString(5) %>" /></td>
      <td width="175">
	    <div id="d" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    <tr>
      <td>District</td>
      <td><label>
        <input type="text" name="district" id="district" value="<%=rs.getString(6) %>" />
        <td width="175">
	    <div id="e" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
      </label></td>
    </tr>
    
    
  <!--  <tr>
      <td>Gender</td>
      <td><input type="radio" readonlyname="radio" id="male" value="male" checked="checked" />
      <label for="male">male
          <input type="radio" readonlyname="radio" id="female" value="female" />
      female     </label></td>
    </tr>-->
    <tr>
      <td>State</td>
      <td>
                 <select name="state" id="state">
            <option value="-1">select </option>
              <option  <%if(rs.getString("state").equalsIgnoreCase("Andra Pradesh")){%> selected <%}%>>Andra Pradesh <%if(rs.getString("state").equalsIgnoreCase("Andra Pradesh")){%> checked="checked" <%}%> </option>
			 <option  <%if(rs.getString("state").equalsIgnoreCase("Arunachal Pradesh")){%> selected <%}%>>Arunachal Pradesh</option>
			  <option  <%if(rs.getString("state").equalsIgnoreCase("Assam")){%> selected <%}%>>Assam</option>
			   <option  <%if(rs.getString("state").equalsIgnoreCase("Bihar")){%> selected <%}%>>Bihar</option>
			    <option  <%if(rs.getString("state").equalsIgnoreCase("Chhattisgarh")){%> selected <%}%>>Chhattisgarh</option> 
				 <option  <%if(rs.getString("state").equalsIgnoreCase("Goa")){%> selected <%}%>>Goa</option>
				  <option  <%if(rs.getString("state").equalsIgnoreCase("Gujarat")){%> selected <%}%>>Gujarat</option>
				   <option  <%if(rs.getString("state").equalsIgnoreCase("Haryana")){%> selected <%}%>>Haryana</option>
				    <option  <%if(rs.getString("state").equalsIgnoreCase("Himachal Pradesh")){%> selected<%}%>>Himachal Pradesh</option>
					 <option  <%if(rs.getString("state").equalsIgnoreCase("Jammu & Kashmir")){%> selected <%}%>>Jammu & Kashmir</option>
					  <option  <%if(rs.getString("state").equalsIgnoreCase("Jharkhand")){%> selected <%}%>>Jharkhand</option>
					  <option  <%if(rs.getString("state").equalsIgnoreCase("Karnataka")){%> selected <%}%>>Karnataka</option>
					   <option  <%if(rs.getString("state").equalsIgnoreCase("Kerala")){%> selected <%}%>>Kerala</option>
					    <option  <%if(rs.getString("state").equalsIgnoreCase("Madhya Pradesh")){%> selected <%}%>>Madhya Prdadesh</option>
						 <option  <%if(rs.getString("state").equalsIgnoreCase("Maharashtra")){%>selected <%}%>>Maharashtra</option>
						  <option  <%if(rs.getString("state").equalsIgnoreCase("Manipur")){%> selected <%}%>>Manipur</option>
						   <option  <%if(rs.getString("state").equalsIgnoreCase("Meghalaya")){%> selected <%}%>>Meghalaya</option>
						    <option  <%if(rs.getString("state").equalsIgnoreCase("Mizoram")){%> selected <%}%>>Mizoram</option>
							 <option <%if(rs.getString("state").equalsIgnoreCase("Nagaland")){%> selected <%}%>>Nagaland</option>
							 <option  <%if(rs.getString("state").equalsIgnoreCase("Odisha")){%> selected <%}%>>Odisha</option>
							  <option  <%if(rs.getString("state").equalsIgnoreCase("Punjab")){%> selected <%}%>>Punjab</option>
							   <option  <%if(rs.getString("state").equalsIgnoreCase("Rajasthan")){%> selected <%}%>>Rajasthan</option>
							    <option  <%if(rs.getString("state").equalsIgnoreCase("Sikkim")){%> selected <%}%>>Sikkim</option>
								 <option  <%if(rs.getString("state").equalsIgnoreCase("Tamil Nadu")){%> selected <%}%>>Tamil Nadu</option>
								  <option  <%if(rs.getString("state").equalsIgnoreCase("Telangana")){%> selected <%}%>>Telangana</option>
								   <option  <%if(rs.getString("state").equalsIgnoreCase("Tripura")){%> selected <%}%>>Tripura</option>
								    <option  <%if(rs.getString("state").equalsIgnoreCase("Uttarakhand")){%> selected <%}%>>Uttarakhand</option>
									 <option  <%if(rs.getString("state").equalsIgnoreCase("Uttar Pradesh")){%> selected <%}%>>Uttar Pradesh</option>
									  <option  <%if(rs.getString("state").equalsIgnoreCase("West Bengal")){%> selected <%}%>>West Bengal</option>
								        </select></td>
                                                                        <td width="175">
	    <div id="f" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    <tr>
      <td>DOB</td>
      <td><label>
        <input type="text" name="dob" id="date" value="<%=rs.getString(11) %>"/>
        <td width="175">
	    <div id="g" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
      </label></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><label>
              <input type="radio" name="radio" id="male" value="male"<%if(rs.getString("gender").equalsIgnoreCase("Male")){%> checked <%}%>/>
      <label for="male">male 
          <input type="radio" name="radio" id="female" value="female" <%if(rs.getString("gender").equalsIgnoreCase("Female")){%> checked <%}%>/>
             <label for="female">female 
      </label></td>
    </tr>
    
    <tr>
      <td>Photo</td>
      <td><label for="upload"></label>
      <input type="file" name="file" id="upload" value="<%=rs.getString(9) %>"/></td>
      <td width="175">
	    <div id="h" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
   
    <!--  <td height="46">Battalian</td>
      <td><label for="select"></label>
        <select name="select" id="select">
      </select></td>-->
    
  <!--  <tr>
      <td height="59">Username</td>
      <td height="59"><label>
        <input type="email" name="useranme" value="<%=rs.getString(12) %>" />
      </label></td>
    </tr>-->
   
   
    <tr>
      <td height="59" colspan="2"><div align="center">
        <input type="submit" name="Update" id="Update" value="Update" onclick="return validate()"/>
      </div></td>
    </tr>
    <% } %>
  </table>
    </div>
</form>
</body>
</html>
    <%@include file="footer.jsp" %>

