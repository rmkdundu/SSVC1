<%@page import="pkg.FilePaths"%>
<%@page import="pkg.SecretSharing"%>
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
      
      String rid="";
      String lid="";
      String file="";
      
      String email="";
      
       lid=session.getAttribute("lid").toString();
       
   dbquery db=new dbquery();
   int sid=0;
   try{
       ResultSet rs=db.maxSid();
       if(rs.next()){
           sid=rs.getInt(1);
       }
   }catch(Exception e){
   sid=0;
   }
   sid++;
   
       byte[] bytes=null;
    iter=upload.getItemIterator(request);
    while(iter.hasNext()){
        FileItemStream item=iter.next();
        String nam=item.getFieldName();
        InputStream stream=item.openStream();
        if(item.isFormField()){
            String str=Streams.asString(stream);
            if(nam.equals("rid")){
                rid=str;
            }
        }
        else if(nam.equals("file")){
            
             File f=new File(FilePaths.projectPath+"web\\uploads\\"+sid+".png");
            file=sid+".png";
            if(!f.exists()){
                f.createNewFile();
            }
            FileOutputStream fos=new FileOutputStream(f);
            int ch;
            while((ch=stream.read())!=-1){
                fos.write(ch);
                
            }
            fos.close();
           
       }
        
       }
       
            SecretSharing s=new SecretSharing();
        s.secretSharing(file);
    int i=db.AddImage(lid, rid, file);
    
    
    
      if(i>0) 
      {

    
 %>
               <script>
                   alert("submit successfully");
                   window.location="Mo_home.jsp";
               </script>
               
               <%
      }
      else
      {
          %>
          <script>
              alert("submit failed");
              window.location="Mo_home.jsp";
          </script>
          <%
      }
          %>
       
           
