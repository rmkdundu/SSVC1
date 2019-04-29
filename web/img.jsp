<%-- 
    Document   : img
    Created on : Apr 17, 2019, 2:16:26 PM
    Author     : genuine
--%>

<%@page import="pkg.ShowSecretImage"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fname=request.getParameter("fname");
            ShowSecretImage secImage=new ShowSecretImage();
            secImage.extractImage(fname);
            try{
                Thread.sleep(3000);
            }catch(Exception e){}
        %>
        <img src="dec_img/<%=fname%>" width="400" height="400"/>
    </body>
</html>
<%@include file="footer.jsp" %>