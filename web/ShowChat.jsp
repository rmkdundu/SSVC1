
<%@page import="mypackage.dbquery"%>
<%@page import="java.sql.ResultSet"%>
<%
    String frmid=session.getAttribute("lid").toString();
    String tid=session.getAttribute("Rid").toString();
    String html="<table id='tbl' style='width: 300px;' align='center' >";
    
    dbquery db=new dbquery();
    ResultSet rs=db.view_chat(frmid, tid);
    while(rs.next()){
        html+="<tr border=1><td>";
          html+="<div  ";
          if((rs.getString("senderid").equalsIgnoreCase(frmid))&&(rs.getString("rid").equalsIgnoreCase(tid)))
              html+="align='right' style=background-color:#CCFFCC>";
          else if((rs.getString("senderid").equalsIgnoreCase(tid))&&(rs.getString("rid").equalsIgnoreCase(frmid)))
             html+="align='left' style=background-color:#FFFFCC>"; 
          html+=rs.getString("msg");
          html+="</div></td></tr>";
    }
    html+="</table>";
    response.getWriter().println(html);
%>