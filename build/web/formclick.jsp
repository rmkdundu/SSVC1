<%-- 
    Document   : formclick
    Created on : 3 Nov, 2017, 9:35:47 PM
    Author     : nidhin lal
--%>

<%@page import="mypackage.dbquery"%>
<%
    String s="";
    try{
        String msg1=request.getParameter("c");
        String frmid=request.getParameter("d");
        String tid=request.getParameter("e");
        dbquery db=new dbquery();
    
        db.AddChat(frmid, tid, msg1);
        
    }catch(Exception e){
        s="<label>notsend</label>";
    }
    response.getWriter().print(s);
%>

