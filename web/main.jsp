<%-- 
    Document   : main
    Created on : 9 Nov, 2016, 6:21:17 PM
    Author     : Karan Breja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
       
        <link href="css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <% if(session.getAttribute("username")!=null)
        {        
        %>
        <div class="bodyborder">    
        <div style="width: 1000px; margin: auto;"><%@include file="view/Header.jsp" %></div>
        
        <div class="maindiv">  
            <div style="width: 150px;"><%@include file="view/Left-Menu.jsp" %></div>
            <div class="rightmenu" style="width: 850px; "></div>
        </div>
        
        <div style="width: 1000px; margin: auto; margin-top:none;"><%@include file="view/Footer.jsp" %></div>
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
