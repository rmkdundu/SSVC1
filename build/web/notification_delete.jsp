<%@page import="mypackage.dbquery"%>
<%
   String id= request.getParameter("id");
   dbquery db=new dbquery();
   int i=db.notification(id);
   if(i>0)
   {
       %>
        <script>
                
                alert("Delete Successfuly");
                window.location="adviewntfn.jsp";
                </script>
            <%
        }
        else
        {
            
            %> <script>
                
                alert("Failed");
                </script>
            <%
   }
   %>