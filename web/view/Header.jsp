<%-- 
    Document   : Header
    Created on : 9 Nov, 2016, 6:51:42 PM
    Author     : Karan Breja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <% if(session.getAttribute("username")!=null)
        {        
        %>
        <div>
		<div class="head">Friends Phone Directory</div>
            
          	<div style=" width: 1000px; height: 30px; margin: auto;background-color: burlywood; border: none; ">
              
            <div style="width: 30%; float: left; font-size: 20px; margin-left: 40px">Username :<%= (session.getAttribute("username"))%></div>  
              
            <div style="width:10%; float:right; font-size: 20px; "> <a href="logout" style="text-decoration:none; color: black;">Logout</a> </div>
            </div>     
    </div>
            <%
            }   
          else
          {
          response.sendRedirect("signup.jsp");
          }
            %>
    </body>
</html>
