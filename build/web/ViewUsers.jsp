<%-- 
    Document   : ViewUsers
    Created on : 16 Dec, 2016, 9:00:52 PM
    Author     : Karan Breja
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.CommonDBOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <div class="bodyborder">
         <div style="width: 1000px; margin: auto;"><%@include file="view/Header.jsp" %></div>
        
        <div class="maindiv">  
            <div style="width: 150px;"><%@include file="view/Left-Menu.jsp" %></div>
            <div class="rightmenu" style="width: 500px; margin-left: 200px;">
                <div style="padding-left: 300px;margin-top: 30px;"><b><p>FRIENDS_DETAILS</p></b></div>
                <div style="margin-left: 120px;margin-top: 10px">
                    <table style="width:250px;">
                        <tr>
                            <th>User Name</th>
                            <th>Mobile No</th>
                            <th colspan="2">User Active</th>
                            <th colspan="2">Edit</th>
                       </tr>
                       
                        <%
                       
               
                       try
                        {

                        Class.forName("com.mysql.jdbc.Driver");

                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/directory","root","1234");
                        PreparedStatement ps=con.prepareStatement("select username,phoneno,active from signup where flag='u'");
                        
                        ResultSet rs=ps.executeQuery();
                        
                        while(rs.next())
                        {
                           String n=rs.getString(2);  
                            
                        %>
                         <tr>
                             <td style="width:100px" class="row-pro"><%= rs.getString(1)%></td>
                              <td style="width:100px" class="row-pro"><%= rs.getString(2)%></td>
                             <td style="width:100px" class="row-pro"><%= rs.getString(3)%></td>
                             <td><input type="checkbox" value="inactive" name="active" checked="checked"></td>
                            <td><a href="DeleteUser?Phone=<%=n%>">Delete</a></td>  
                            
                             <td><a href="UpdateUser.jsp?Phone=<%=n%>">Update</a></td>
                             
                        </tr>
                        
            <%        
                        }
                        }
                        catch(Exception ee){System.out.println(ee.getMessage());}


                  
                    
                  
                         %>
                        
                    </table>
                         
                </div> 

                
                
                
                
            </div>
        </div>
        
            
        <div style="width: 1000px; margin: auto; margin-top:none;"><%@include file="view/Footer.jsp" %></div>
        </div>
    </body>
</html>
