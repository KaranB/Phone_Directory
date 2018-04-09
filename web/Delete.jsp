<%-- 
    Document   : Delete
    Created on : 9 Nov, 2016, 7:33:59 PM
    Author     : Karan Breja
--%>
<%@page import="model.CommonDBOperation"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE</title>
        <link href="css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="bodyborder">
         <div style="width: 1000px; margin: auto;"><%@include file="view/Header.jsp" %></div>
        
        <div class="maindiv">  
            <div style="width: 150px;"><%@include file="view/Left-Menu.jsp" %></div>
            <div class="rightmenu" style="width: 500px; margin-left: 200px;">
                
                
                <form> 
                    <div>
                        
                        <fieldset class="field-pro">
                            <legend><b>DELETE SECTION</b></legend>
                        
                            <div class="maintext">
                                <div class="text1">Phone No:</div>
                                <div class="text2"> <input type="text" name="phone"></div>
                            
                            <div class="maintext">
                                
                                <div class="text2"> <input type="submit" name="btn2" value="Delete"></div>
                            </div>
                                    
                        <%
        
            if(request.getParameter("btn2")!=null)
            {    
                     try
                        {
                            String Phone=request.getParameter("phone");
                           
                            String qry="delete from details where phoneno ='"+Phone+"'";
                            CommonDBOperation db=new CommonDBOperation();
                            db.InsertUpdateDelete(qry);
                        
                            out.print("Deleted successfully !!'");
					
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

