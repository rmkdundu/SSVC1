package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import pkg.FilePaths;
import pkg.SecretSharing;
import mypackage.FilePath;
import mypackage.dbquery;
import org.apache.commons.io.IOUtils;
import java.sql.ResultSet;
import java.io.FileOutputStream;
import java.io.File;
import org.apache.commons.fileupload.util.Streams;
import java.io.InputStream;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.sql.Statement;
import java.sql.Connection;

public final class up_005fsecret_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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

    
 
      out.write("\n");
      out.write("               <script>\n");
      out.write("                   alert(\"submit successfully\");\n");
      out.write("                   window.location=\"Mo_home.jsp\";\n");
      out.write("               </script>\n");
      out.write("               \n");
      out.write("               ");

      }
      else
      {
          
      out.write("\n");
      out.write("          <script>\n");
      out.write("              alert(\"submit failed\");\n");
      out.write("              window.location=\"Mo_home.jsp\";\n");
      out.write("          </script>\n");
      out.write("          ");

      }
          
      out.write("\n");
      out.write("       \n");
      out.write("           \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
