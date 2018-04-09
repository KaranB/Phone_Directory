package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.CommonDBOperation;
import java.sql.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/view/login_header.html");
    _jspx_dependants.add("/view/login-footer.html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");

        String msg="";
        if(request.getParameter("login")!=null)
        {
            String name=request.getParameter("name");
            String pwd=request.getParameter("password");
            
            
                          
                         
                           try
                           {
                              
                               Class.forName("com.mysql.jdbc.Driver");

                               Connection con=DriverManager.getConnection("jdbc:mysql://localhost/directory","root","1234");
                               PreparedStatement ps=con.prepareStatement("select * from signup where username='"+name+"' and password='"+pwd+"'");

                              ResultSet rs=ps.executeQuery();

                             if(rs.next())
                                 {
                                     String username=rs.getString(1);
                                     String usertype=rs.getString(3);
                                     String useractive=rs.getString(7);
                
                                     session.setAttribute("usertype", usertype);
                                     session.setAttribute("username", username);
                                     session.setAttribute("useractive", useractive);
                                     response.sendRedirect("main.jsp");
                                     
                                     
                                  }
                                 else
                                 {
                                     msg="wrong UserID or password";
                                 }

                      
        


                           }
                                   catch(Exception ee){}

           }
        
        
      
        
        
        
        
        if(request.getParameter("signup")!=null)
        {
            String name=request.getParameter("name");
            String pwd=request.getParameter("password");
            String phoneno=request.getParameter("phoneno");
            String address=request.getParameter("address");
            String emailid=request.getParameter("emailid");
            
                          
                          
                          
                           
                              
                               String q1="insert into signup(`username`,`password`,`phoneno`,`address`,`emailid`) values('"+name+"','"+pwd+"','"+phoneno+"','"+address+"','"+emailid+"')";
                               CommonDBOperation db=new CommonDBOperation();
                               db.InsertUpdateDelete(q1);
                               
                            
                               String q2="select * from signup where username='"+name+"' and password='"+pwd+"'";
                           
                             try
                                    {
                                
                             
                              ResultSet rs=db.RetriveData(q2);

                              

                                 if(rs.next())
                                 {
                                     String username=rs.getString(1);
                                     String usertype=rs.getString(3);
                                     String useractive=rs.getString(7);
                                     
                                     session.setAttribute("usertype", usertype);
                                     session.setAttribute("username", username);
                                     session.setAttribute("useractive", useractive);
                                     response.sendRedirect("main.jsp");
                                     
                                     
                                  }
                                 else
                                 {
                                     msg="wrong UserID or password";
                                 }

                               


                           }
                                   catch(Exception ee){}

           }
        
        
        
        
        
        
        
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link href=\"css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"bodyborder\">    \n");
      out.write("        <div style=\"width: 1000px; margin: auto;\">");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("         <link href=\"css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div>\r\n");
      out.write("\t\t<div class=\"head1\">Friends Phone Directory</div>\r\n");
      out.write("            \r\n");
      out.write("        </div>     \r\n");
      out.write("    \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("        <div class=\"maindiv\">  \n");
      out.write("           \n");
      out.write("            <div  style=\"width: 400px;height: 505px; float: left;  \">\n");
      out.write("                   <div style=\"width: 400px; height: 505px;border-right: 1px solid black;\">\n");
      out.write("                       <img src=\"Icon-4-phone-book.png\" alt=\"phone_directory\" style=\"width: 300px;padding-top: 80px;\">\n");
      out.write("                   </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div style=\"width: 600px; height: 505px; margin-left: 400px;\">\n");
      out.write("                <div style=\"height: 130px; background-color: burlywood;\">\n");
      out.write("                <div style=\" float: left;  width: 195px; height: 130px; font-size: 30px;float: left; \">\n");
      out.write("                    <div style=\"margin-top: 30px; margin-left: 5px;\"><b>Existing User?</b></div></div>\n");
      out.write("                <div style=\"float: right;width: 400px; height: 130px;float: right;\">\n");
      out.write("                    <form >\n");
      out.write("                        <div style=\"margin-top:20px;\"><div style=\"margin-left:40px; float:left\"> Username:  <input type=\"text\" name=\"name\" placeholder=\"Enter Username\"></div></div><br>\n");
      out.write("                      <div style=\"margin-left:43px; float:left;margin-top: 10px;\">Password:  <input type=\"password\" name=\"password\" placeholder=\"Enter Password\" ></div><br>\n");
      out.write("                       \n");
      out.write("                      <div style=\"margin-left:120px; margin-top:23px;\"><input type=\"submit\" name=\"login\" value=\"Login\"></div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div style=\"height: 370px; width: 600px; \">\n");
      out.write("                 <div style=\"height: 50px; font-size: 30px;\"><div style=\"margin-top: 20px; margin-left: 5px; text-align: center;\"><b>SignUP</b></div></div>\n");
      out.write("                <div style=\" height: 320px;\">\n");
      out.write("                    <center><form>\n");
      out.write("                        <div style=\"margin-top: 10px;\">Username: <input type=\"text\" name=\"name\" placeholder=\"Enter Username\"></div><br>\n");
      out.write("                      <div style=\" margin-top: 3px;\">Password: <input type=\"password\" name=\"password\" placeholder=\"Enter Password\" ></div><br>\n");
      out.write("                      <div style=\"margin-top: 3px;\">Phone No:  <input type=\"text\" name=\"phoneno\" placeholder=\"Enter Phone No.\" ></div><br>\n");
      out.write("                      <div style=\"margin-top: 3px;\">Address:  <input type=\"text\" name=\"address\" placeholder=\"Enter Address\" ></div><br>\n");
      out.write("                      <div style=\"margin-top: 3px;\">Email id:  <input type=\"emailid\" name=\"emailid\" placeholder=\"Enter Email id\" ></div><br>\n");
      out.write("                      <div style=\"\"><input type=\"submit\" name=\"signup\" value=\"SignUP\"></div>\n");
      out.write("                    </form>\n");
      out.write("                    </center>     \n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <div style=\"width: 1000px; margin: auto; margin-top:none;\">");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>TODO supply a title</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link href=\"../css/royal.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>        \r\n");
      out.write("        <div id=\"foot1\">Phone Directory @ 2016</div>\r\n");
      out.write("    </body>\r\n");
      out.write("    \r\n");
      out.write("</html>\r\n");
      out.write("</div>\n");
      out.write("        </div>\n");
      out.write("       \n");
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
