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
	if(document.getElementById("pin").value.length<6)
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
	if(document.getElementById("username").value=="")
	{
		
		document.getElementById("i").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("i").style.visibility="hidden";
	}
         var emailPat =/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

     var emailid=document.getElementById("username").value;

     var matchArray = emailid.match(emailPat);

     if (matchArray == null)

    {

              document.getElementById("i").style.visibility="visible";
		  flag=false;
	     }
		  else
	     {
	      document.getElementById("i").style.visibility="hidden";
	     }
	if(document.getElementById("password").value=="")
	{
		
		document.getElementById("j").style.visibility="visible";
		flag= false;
	}
	else
	{
	document.getElementById("j").style.visibility="hidden";
	}
          
        if(document.getElementById("password").value.length<6)

     {

          document.getElementById("j").style.visibility="visible";
		  flag= false;

     }
	  else
	{
	document.getElementById("j").style.visibility="hidden";
	}
	
	
    return flag;

	}
</script> 
    <Center>
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
    <form action="upload.jsp" name="form1" enctype="multipart/form-data" method="post" id="form1">
    <div id="form1">
          <div class="col-md-6 mx-auto mb-5 section-heading" >
        <table width="577" height="620" border="0" >
    <tr>
      <td width="166" height="54">Name</td>
      <td width="189"><label for="name"></label>
      <input type="text" name="name" id="name" /></td>
      <td width="208">
	    <div id="a" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    <tr>
      <td height="48">Place</td>
      <td><label>
              <input type="text" name="place" id="place" />
      </label></td>
       <td width="208">
	    <div id="b" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    <tr>
      <td height="48">Post</td>
      <td><label>
        <input type="text" name="post"  id="post"/>
      </label></td>
      <td width="208">
	    <div id="c" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr>
      <td height="48">Pin Code </td>
      <td><label>
        <input type="text" name="pin"n id="pin" />
      </label></td>
      <td width="208">
	    <div id="d" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr>
      <td height="48">District</td>
      <td><label>
        <input type="text" name="district" id="district" />
      </label></td>
      <td width="208">
	    <div id="e" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr>
      <td height="48">State</td>
      <td><label>
        <select name="state" id="state">
            <option value="-1">select</option>
            <option>AndraPradesh</option>
			 <option>Arunachal Pradesh</option>
			  <option>Assam</option>
			   <option>Bihar</option>
			    <option>Chhattisgarh</option>
				 <option>Goa</option>
				  <option>Gujarat</option>
				   <option>Haryana</option>
				    <option>Himachal Pradesh</option>
					 <option>Jammu & Kashmir</option>
					  <option>Jharkhand</option>
					  <option>Karnataka</option>
					   <option>Kerala</option>
					    <option>Madhya Prdadesh</option>
						 <option>Maharashtra</option>
						  <option>Manipur</option>
						   <option>Meghalaya</option>
						    <option>Mizoram</option>
							 <option>Nagaland</option>
							 <option>Odisha</option>
							  <option>Punjab</option>
							   <option>Rajasthan</option>
							    <option>Sikkim</option>
								 <option>Tamil Nadu</option>
								  <option>Telangana</option>
								   <option>Tripura</option>
								    <option>Uttarakhand</option>
									 <option>UttarPradesh</option>
									  <option>West Bengal</option>
								        </select>
      </label>        <label for="address"></label></td>
      <td width="208">
	    <div id="f" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr>
      <td height="59">DOB</td>
      <td><label for="date"></label>
      <input type="date" name="dob" id="date" /></td>
      <td width="208">
	    <div id="g" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr>
      <td height="54">Gender</td>
      <td><input type="radio" name="radio" id="male" value="male"  checked="checked"/>
        <label for="male">male 
          <input type="radio" name="radio" id="female" value="female" />
      female</label></td>
       <td width="208">
	    <div style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    <tr>
      <td height="51">photo</td>
      <td><input type="file" name="file" id="upload" /></td>
      <td width="208">
	    <div id="h" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <!--<tr>
      <td height="53">battalion</td>
      <td><label for="select"></label>
        <select name="select" id="battalian">
            <option> Select</option>
            
      </select></td>
    </tr>-->
    <tr>
      <td height="49">Email</td>
      <td><label for="username"></label>
      <input type="email" name="email" id="username" /></td>
      <td width="208">
	    <div id="i" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr>
      <td height="39">Password</td>
      <td><label>
        <input type="password" name="password" id="password" />
      </label>        <label for="password"></label></td>
      <td width="208">
	    <div id="j" style="visibility:hidden" align="center"><font color="#FF0000">Invalid Entry!!</font></div>
            </td>
    </tr>
    </tr>
    <tr><center>
      <td height="46" colspan="2"><label for="password">
        <div align="center">
            <input type="submit" name="submit" id="submit" value="Submit" onclick="return validate()"/>
        </div>
      </label></td>
        </center>
    </tr>
  </table>
  </div>
    </div>
    </form>
</body>
    </center>
</html>
        <%@include file="footer.jsp" %>