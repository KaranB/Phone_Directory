package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.CommonDBOperation;
import java.sql.*;

public final class Insert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/view/Header.jsp");
    _jspx_dependants.add("/view/Left-Menu.jsp");
    _jspx_dependants.add("/view/Footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
 
    if(!"username".equals(session.getAttribute("username")))
                    {
                    response.sendRedirect("signup.jsp");
                    }
   
                
    

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>INSERT</title>\n");
      out.write("        <link href=\"css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"bodyborder\">\n");
      out.write("         <div style=\"width: 1000px; margin: auto;\">");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"../css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("\t\t<div class=\"head\">Friends Phone Directory</div>\n");
      out.write("            \n");
      out.write("          \t<div style=\" width: 1000px; height: 30px; margin: auto;background-color: burlywood; border: none; \">\n");
      out.write("              \n");
      out.write("            <div style=\"width: 30%; float: left; font-size: 20px; margin-left: 40px\">Username :");
      out.print( session.getAttribute("username"));
      out.write("</div>  \n");
      out.write("              \n");
      out.write("            <div style=\"width:10%; float:right; font-size: 20px; \"> <a href=\"signup.jsp\" style=\"text-decoration:none; color: black;\">Logout</a> </div>\n");
      out.write("            </div>     \n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("        <div class=\"maindiv\">  \n");
      out.write("            <div style=\"width: 150px;\">");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"../css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"mainleftmenu\">\n");
      out.write("                \n");
      out.write("            <div class=\"leftmenu1\"><b>Details</b></div>\n");
      out.write("                \n");
      out.write("                <div class=\"leftmenu2\"><a href=\"Insert.jsp\" style=\"text-decoration:none\">Insert</a></div>\n");
      out.write("                <div class=\"leftmenu2\"><a href=\"Select.jsp\" style=\"text-decoration:none\">View Details</a></div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                ");

            
                    String usertype=session.getAttribute("usertype").toString();
                    
                    if(usertype.equalsIgnoreCase("A"))
                    {
                
      out.write("\n");
      out.write("                \n");
      out.write("                 <div class=\"leftmenu2\"><a href=\"Delete.jsp\" style=\"text-decoration:none\">Delete</a></div>\n");
      out.write("                 <div class=\"leftmenu2\"><a href=\"Update.jsp\" style=\"text-decoration:none\">Update</a></div>\n");
      out.write("               \n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("                 \n");
      out.write("                <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                 <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                 <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                 <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                 <div>  &nbsp</div>\n");
      out.write("                <div>&nbsp;</div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</div>\n");
      out.write("            <div class=\"rightmenu\" style=\"  margin-left: 150px;\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <form class=\"form-pro\"> \n");
      out.write("                    <div>\n");
      out.write("                        \n");
      out.write("                        <fieldset class=\"field-pro\">\n");
      out.write("                            <legend><b>INSERT SECTION</b></legend>\n");
      out.write("                        \n");
      out.write("                            <div class=\"maintext\">\n");
      out.write("                                <div class=\"text1\">Phone No:</div>\n");
      out.write("                                <div class=\"text2\"> <input type=\"text\" name=\"phone\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"maintext\">\n");
      out.write("                                <div class=\"text1\">Friends Name:</div>\n");
      out.write("                                <div class=\"text2\"><input type=\"text\" name=\"name\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                                 \n");
      out.write("                            <div class=\"maintext\">\n");
      out.write("                                <div class=\"text1\">Email:</div>\n");
      out.write("                                <div class=\"text2\"> <input type=\"email\" name=\"email\"></div>\n");
      out.write("                            </div>    \n");
      out.write("                           \n");
      out.write("                            <div class=\"maintext\">\n");
      out.write("                                <div class=\"text1\">Address:</div>\n");
      out.write("                                <div class=\"text2\"> <input type=\"text\" name=\"address\"></div>\n");
      out.write("                            </div>   \n");
      out.write("                            \n");
      out.write("                            <div class=\"maintext\">\n");
      out.write("                                \n");
      out.write("                                <div class=\"text2\"> <input type=\"submit\" name=\"btn1\" value=\"Insert\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                       \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                ");

                  
                
                
                  if(request.getParameter("btn1")!=null)
                  {
                      
                      String Phone=request.getParameter("phone");
                       String Name=request.getParameter("name");
                        
                         String Email=request.getParameter("email");
                         String Address=request.getParameter("address");
                         
                      try
                        {

                       

                        
                        String qury="insert into details values('"+Phone+"','"+Name+"','"+Email+"','"+Address+"','"+session.getAttribute("username")+"')";
                        CommonDBOperation db=new CommonDBOperation();
                        db.InsertUpdateDelete(qury);
                                         out.print("Inserted successfully !!'");
					
                        }
                        catch(Exception ee){System.out.println(ee.getMessage());}



                       }
                          
                  
                  
                  
                  
      out.write("\n");
      out.write("              \n");
      out.write("                \n");
      out.write("                 </fieldset>\n");
      out.write("                        \n");
      out.write("                        </div>\n");
      out.write("                </form>  \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("            \n");
      out.write("            \n");
      out.write("          <div style=\"width: 1000px; margin: auto; margin-top:none;\">");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"../css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"foot\">Phone Directory @ 2016</div>\n");
      out.write("        <div style=\"text-align: center;\"> Last Updated: ");
      out.print( new java.util.Date() );
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
