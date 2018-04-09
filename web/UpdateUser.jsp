<%-- 
    Document   : UpdateUser
    Created on : 16 Dec, 2016, 9:43:58 PM
    Author     : Karan Breja
--%>

<%@page import="model.CommonDBOperation"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE</title>
        <link href="css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="bodyborder">
         <div style="width: 1000px; margin: auto;"><%@include file="view/Header.jsp" %></div>
        
        <div class="maindiv">  
            <div style="width: 150px;"><%@include file="view/Left-Menu.jsp" %></div>
            <div class="rightmenu" style="  margin-left: 150px;">
                
                
                <form class="form-pro"> 
                    <div>
                        
                        <fieldset class="field-pro">
                            <legend><b>UPDATE SECTION</b></legend>
                        
                            
                             <% 
                            ResultSet rs=null;
                           // String sss=request.getParameter("Phone");
                            //out.print(sss);
                         
                      if(request.getParameter("btn4")==null)
                         {
                           try
                           {
                               String hello=request.getParameter("Phone");
                               
                              String ss= "select * from signup where phoneno='"+hello+"'";

                               CommonDBOperation db=new CommonDBOperation();
                              
                               rs = db.RetriveData(ss);

                               rs.next();

                               


                           }
                                   catch(Exception ee){}

                         
                  %>
                        
                            
                            
                            
                            <div class="maintext">
                                <div class="text1">UserName</div>
                                <div class="text2"> <input type="text" name="name" value="<% out.print(rs.getString(1)); %>"></div>
                            </div>
                            
                            <div class="maintext">
                                <div class="text1">Password</div>
                                <div class="text2"><input type="text" name="password" value="<%out.print(rs.getString(2)); %>"></div>
                            </div>
                            
                                 
                            <div class="maintext">
                                <div class="text1">Phone No</div>
                                <div class="text2"> <input type="text" name="phone" value="<% out.print(rs.getString(4)); %>" readonly="readonly"></div>
                            </div>    
                           
                            <div class="maintext">
                                <div class="text1">Address:</div>
                                <div class="text2"> <input type="text" name="address" value="<% out.print(rs.getString(5));%>"></div>
                            </div>   
                            
                            <div class="maintext">
                                <div class="text1">Email Id</div>
                                <div class="text2"> <input type="email" name="email" value="<% out.print(rs.getString(6)); %>"></div>
                            </div>   
                            
                            <div class="maintext">
                                <div class="text1">Active:</div>
                                <div class="text2"> <input type="text" name="active" value="<% out.print(rs.getString(7)); %>"></div>
                            </div>   
                            
                            
                            
                             <div class="maintext">
                                
                                <div class="text2"> <input type="submit" name="btn4" value="Update"></div>
                            </div>
                            
                       
                             <%
                         }
             if(request.getParameter("btn4")!=null)
             {
                      
                      String Phone=request.getParameter("phone");
                       String Name=request.getParameter("name");
                        String Email=request.getParameter("email");
                        String Address=request.getParameter("address");
                         String Password=request.getParameter("password");
                          String Active=request.getParameter("active");
                        
                      try
                        {

                       
                      //  String mm="update signup set address='"+Address+"',name='"+Name+"',email='"+Email+"',password='"+Password+"',active='"+Active+"' where phoneno='"+Phone+"'";
                       //  CommonDBOperation db=new CommonDBOperation();
                         //   db.InsertUpdateDelete(mm);

                           Class.forName("com.mysql.jdbc.Driver");

                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/directory","root","1234");
                        PreparedStatement ps=con.prepareStatement("update signup set address='"+Address+"',username='"+Name+"',emailid='"+Email+"',password='"+Password+"',active='"+Active+"' where phoneno='"+Phone+"'");
                        ps.execute();
                            response.sendRedirect("ViewUsers.jsp");
                                         
					
                        }
                        catch(Exception ee){System.out.println(ee.getMessage());}
                      
                        

            }
                                                             
                                                                         
                                                                         
   %>
                
                
              
                
                 </fieldset>
                        
                        </div>
                </form>  
                
            </div>
        </div>
        
            
            
          <div style="width: 1000px; margin: auto; margin-top:none;"><%@include file="view/Footer.jsp" %></div>
        </div>
    </body>
</html>

