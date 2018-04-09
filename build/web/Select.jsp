<%-- 
    Document   : Select
    Created on : 9 Nov, 2016, 8:07:24 PM
    Author     : Karan Breja
--%>

<%@page import="model.CommonDBOperation"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELECT</title>
        <link href="css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <body>
        <div class="bodyborder">    
        <div style="width: 1000px; margin: auto;"><%@include file="view/Header.jsp" %></div>
        
        <div class="maindiv">  
            <div style="width: 150px;"><%@include file="view/Left-Menu.jsp" %></div>
            <div class="rightmenu" style="width: 150px; float: left; ">
                
                 
                
                <div style="padding-left: 330px;margin-top: 30px;"><b><p>FRIENDS_DETAILS</p></b></div>
                <div style="margin-left: 120px;margin-top: 10px">
                    <table style="width:600px;">
                        <tr>
                          <th>Phone No.</th>
                          <th>Friends Name</th> 
                          <th>Email ID</th>
                          <th>Address</th>
                          <th>Login</th>
                        </tr>
                        
                        <%
                       String usertype=session.getAttribute("usertype").toString();
            
                    
                    
                    if(usertype.equalsIgnoreCase("A"))
                    {
                
                        
                      try
                        {

                        
                        String yo="select * from details";
                        CommonDBOperation db=new CommonDBOperation();
                              
                           ResultSet rs=db.RetriveData(yo);

                        
                        
                        while(rs.next())
                        {
                        %>
                         <tr>
                             <td style="width:100px" class="row-pro"><%= rs.getString(1)%></td>
                            <td style="width:100px" class="row-pro" ><%= rs.getString(2)%></td>
                            <td style="width:100px"  class="row-pro" ><%= rs.getString(3)%></td>
                            <td style="width:100px"  class="row-pro" ><%= rs.getString(4)%></td>	
                            <td style="width:100px"  class="row-pro" ><%= rs.getString(5)%></td>

                         </tr>
                        
			<%		
                        }
                        }
                        catch(Exception ee){System.out.println(ee.getMessage());}


                  
                    }
                    else
                    {
                    try
                        {
                        String ho= "select * from details where login='"+session.getAttribute("username")+"'";
                        CommonDBOperation db=new CommonDBOperation();
                              
                        ResultSet rs=db.RetriveData(ho);
                        
                        
                        while(rs.next())
                        {
                        %>
                         <tr>
                             <td style="width:100px" class="row-pro"><%= rs.getString(1)%></td>
                            <td style="width:100px" class="row-pro" ><%= rs.getString(2)%></td>
                            <td style="width:100px"  class="row-pro" ><%= rs.getString(3)%></td>
                            <td style="width:100px"  class="row-pro" ><%= rs.getString(4)%></td>	
                            <td style="width:100px"  class="row-pro" ><%= rs.getString(5)%></td>

                         </tr>
                        
			<%		
                        }
                        }
                        catch(Exception ee){System.out.println(ee.getMessage());}

                    }
                
                  
                         %>
                        
                    </table>
                </div>  
                
                
                
                
                
                
                
                
                
                
                
                
            </div>
        </div>
        
        <div style="width: 1000px; margin: auto; margin-top:none;"><%@include file="view/Footer.jsp" %></div>
        </div>
    </body>
    </body>
</html>

