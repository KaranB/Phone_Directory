<%-- 
    Document   : Update
    Created on : 9 Nov, 2016, 7:49:26 PM
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
                         if(request.getParameter("btn3")!=null)
                         {

                           try
                           {
                               String Phone=request.getParameter("phone");
                               
                              String ss= "select * from details where phoneno='"+Phone+"'";

                               CommonDBOperation db=new CommonDBOperation();
                              
                               rs = db.RetriveData(ss);

                               rs.next();

                               


                           }
                                   catch(Exception ee){}

                        }
                  %>
                        
                            
                            
                            
                            <div class="maintext">
                                <div class="text1">Phone No:</div>
                                <div class="text2"> <input type="text" name="phone" value="<% if(request.getParameter("btn3")!=null){out.print(rs.getString(1));} %>"></div>
                            </div>
                            
                            <div class="maintext">
                                <div class="text1">Friends Name:</div>
                                <div class="text2"><input type="text" name="name" value="<% if(request.getParameter("btn3")!=null){out.print(rs.getString(2));} %>"></div>
                            </div>
                            
                                 
                            <div class="maintext">
                                <div class="text1">Email:</div>
                                <div class="text2"> <input type="email" name="email" value="<% if(request.getParameter("btn3")!=null){out.print(rs.getString(3));} %>"></div>
                            </div>    
                           
                            <div class="maintext">
                                <div class="text1">Address:</div>
                                <div class="text2"> <input type="text" name="address" value="<% if(request.getParameter("btn3")!=null){out.print(rs.getString(4));} %>"></div>
                            </div>   
                            
                            <div class="maintext">
                                
                                <div class="text2"> <input type="submit" name="btn3" value="Fetch"></div>
                            </div>
                            
                             <div class="maintext">
                                
                                <div class="text2"> <input type="submit" name="btn4" value="Update"></div>
                            </div>
                            
                       
                             <%
             if(request.getParameter("btn4")!=null)
             {
                      
                      String Phone=request.getParameter("phone");
                       String Name=request.getParameter("name");
                        String Email=request.getParameter("email");
                        String Address=request.getParameter("address");
                        
                      try
                        {

                       
                        String mm="update details set address='"+Address+"',name='"+Name+"',email='"+Email+"' where phoneno='"+Phone+"'";
                         CommonDBOperation db=new CommonDBOperation();
                            db.InsertUpdateDelete(mm);
                        
                                         out.print("Updated successfully !!'");
					
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
