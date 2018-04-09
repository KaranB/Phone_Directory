<%-- 
    Document   : signup
    Created on : 12 Nov, 2016, 8:07:11 PM
    Author     : Karan Breja
--%>
<%@page import="model.CommonDBOperation"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
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
        
        
        
        
        
        
        
        %>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/royal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="bodyborder">    
        <div style="width: 1000px; margin: auto;"><%@include file="view/login_header.html" %></div>
        
        <div class="maindiv">  
           
            <div  style="width: 400px;height: 505px; float: left;  ">
                   <div style="width: 400px; height: 505px;border-right: 1px solid black;">
                       <img src="Icon-4-phone-book.png" alt="phone_directory" style="width: 300px;padding-top: 80px;">
                   </div>
            </div>
            
            <div style="width: 600px; height: 505px; margin-left: 400px;">
                <div style="height: 130px; background-color: burlywood;">
                <div style=" float: left;  width: 195px; height: 130px; font-size: 30px;float: left; ">
                    <div style="margin-top: 30px; margin-left: 5px;"><b>Existing User?</b></div></div>
                <div style="float: right;width: 400px; height: 130px;float: right;">
                    <form >
                        <div style="margin-top:20px;"><div style="margin-left:40px; float:left"> Username:  <input type="text" name="name" placeholder="Enter Username"></div></div><br>
                      <div style="margin-left:43px; float:left;margin-top: 10px;">Password:  <input type="password" name="password" placeholder="Enter Password" ></div><br>
                       
                      <div style="margin-left:120px; margin-top:23px;"><input type="submit" name="login" value="Login"></div>
                    </form>
                </div>
                </div>
                
                <div style="height: 370px; width: 600px; ">
                 <div style="height: 50px; font-size: 30px;"><div style="margin-top: 20px; margin-left: 5px; text-align: center;"><b>SignUP</b></div></div>
                <div style=" height: 320px;">
                    <center><form>
                        <div style="margin-top: 10px;">Username: <input type="text" name="name" placeholder="Enter Username"></div><br>
                      <div style=" margin-top: 3px;">Password: <input type="password" name="password" placeholder="Enter Password" ></div><br>
                      <div style="margin-top: 3px;">Phone No:  <input type="text" name="phoneno" placeholder="Enter Phone No." ></div><br>
                      <div style="margin-top: 3px;">Address:  <input type="text" name="address" placeholder="Enter Address" ></div><br>
                      <div style="margin-top: 3px;">Email id:  <input type="emailid" name="emailid" placeholder="Enter Email id" ></div><br>
                      <div style=""><input type="submit" name="signup" value="SignUP"></div>
                    </form>
                    </center>     
                </div>
                </div>
            </div>
        </div>
        
        
         <div style="width: 1000px; margin: auto; margin-top:none;"><%@include file="view/login-footer.html" %></div>
        </div>
       
    </body>
</html>
