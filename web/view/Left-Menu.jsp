<%-- 
    Document   : Left-Menu
    Created on : 9 Nov, 2016, 6:52:04 PM
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
        
        <%
             String UserActive=session.getAttribute("useractive").toString();
             if(UserActive.equalsIgnoreCase("active"))
            {
                %>

       
        <div class="mainleftmenu">
                
            <div class="leftmenu1"><b>Details</b></div>
                
                <div class="leftmenu2"><a href="Insert.jsp" style="text-decoration:none">Insert</a></div>
                <div class="leftmenu2"><a href="Select.jsp" style="text-decoration:none">View Details</a></div>
                
                
                <%
            
                    String usertype=session.getAttribute("usertype").toString();
                    
                    if(usertype.equalsIgnoreCase("A"))
                    {
                %>
                
                 <div class="leftmenu2"><a href="Delete.jsp" style="text-decoration:none">Delete</a></div>
                 <div class="leftmenu2"><a href="Update.jsp" style="text-decoration:none">Update</a></div>
                 <div class="leftmenu2"><a href="ViewUsers.jsp" style="text-decoration: none;">View Users</p></a></div>

               
                <%
                    }
                %>
                 
                <div>  &nbsp</div>
                <div>&nbsp;</div>
                 <div>  &nbsp</div>
                <div>&nbsp;</div>
                <div>  &nbsp</div>
                <div>&nbsp;</div>
                 <div>  &nbsp</div>
                <div>&nbsp;</div>
                <div>  &nbsp</div>
                <div>&nbsp;</div>
                 <div>  &nbsp</div>
                <div>&nbsp;</div>
                <div>  &nbsp</div>
                <div>&nbsp;</div>
                 <div>  &nbsp</div>
                <div>&nbsp;</div>
                
                
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
