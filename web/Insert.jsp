<%-- 
    Document   : Insert
    Created on : 9 Nov, 2016, 7:27:22 PM
    Author     : Karan Breja
--%>

<%@page import="model.CommonDBOperation"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERT</title>
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
                            <legend><b>INSERT SECTION</b></legend>
                        
                            <div class="maintext">
                                <div class="text1">Phone No:</div>
                                <div class="text2"> <input type="text" name="phone"></div>
                            </div>
                            
                            <div class="maintext">
                                <div class="text1">Friends Name:</div>
                                <div class="text2"><input type="text" name="name"></div>
                            </div>
                            
                                 
                            <div class="maintext">
                                <div class="text1">Email:</div>
                                <div class="text2"> <input type="email" name="email"></div>
                            </div>    
                           
                            <div class="maintext">
                                <div class="text1">Address:</div>
                                <div class="text2"> <input type="text" name="address"></div>
                            </div>   
                            
                            <div class="maintext">
                                
                                <div class="text2"> <input type="submit" name="btn1" value="Insert"></div>
                            </div>
                            
                            
                       
                
                
                <%
                  
                
                
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
