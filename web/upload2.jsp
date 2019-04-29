
<%@page import="mypackage.FilePath"%>
<%@page import="mypackage.dbquery"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    ServletFileUpload upload=new ServletFileUpload();
    FileItemIterator iter=null;
      
    String id="";
      String name="";
      String place="";
      String post="";
      String pin="";
      String district="";
      String state="";
      String dob="";
      String gender="";
       String image="";
     
    
      
      // String bid=session.getAttribute("lid").toString();
       
       byte[] bytes=null;
    iter=upload.getItemIterator(request);
    while(iter.hasNext()){
        FileItemStream item=iter.next();
        String nam=item.getFieldName();
        InputStream stream=item.openStream();
        if(item.isFormField()){
            String str=Streams.asString(stream);
            if(nam.equals("name")){
                name=str;
            }
            else if(nam.equals("id"))
            {
                id=str;
            }
            else if(nam.equals("place")){
                place=str;
            }
            else if(nam.equals("post"))
                    {
                        post=str;
                    }
            else if(nam.equals("pin"))
            {
                
                pin=str;
            }
            else if(nam.equals("district"))
            {
                district=str;
            }
            else if(nam.equals("state"))
            {
                state=str;
            }
            else if(nam.equals("dob"))
            {
                dob=str;
            }
           
            else if(nam.equals("radio"))
            {
                gender=str;
            }
           
            
             
          
        }
        else if(nam.equals("file")){
            
             File f=new File(FilePath.path+"c_pic\\"+item.getName().substring(item.getName().lastIndexOf("\\") + 1));
            image=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
            if(!f.exists()){
                f.createNewFile();
            }
            FileOutputStream fos=new FileOutputStream(f);
            int ch;
            while((ch=stream.read())!=-1){
                fos.write(ch);
                
            }
           
       }
        
       }
       
            
   dbquery db=new dbquery();
    int i=db.update(id, name, place, post, pin, district, state, gender, image, dob);
    
    
    
      if(i>0) 
      {

    
 %>
               <script>
                   alert("update successfully");
                   window.location="adviewcmndo.jsp";
               </script>
               
               <%
      }
      else
      {
          %>
          <script>
              alert("update failed");
              window.location="adminhome.jsp";
          </script>
          <%
      }
          %>
       
           
