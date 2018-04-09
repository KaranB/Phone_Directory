/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.*;

/**
 *
 * @author Karan Breja
 */
public class CommonDBOperation 
{
    Connection con=null;
 
    public void Conn()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/directory","root","1234");
        }
        catch(Exception ee){}
    }
    
    public void InsertUpdateDelete(String Query)
    {
        try
        {
            Conn();
        PreparedStatement ps=con.prepareStatement(Query);
        ps.execute();
        con.close();
        }
        catch(Exception ee){}
    }
   
    
    
    
    public ResultSet RetriveData(String Query)
    {
        ResultSet Rs=null;
        try
        {
            Conn();
            Statement st=con.createStatement();
            Rs= st.executeQuery(Query);
            
            
        }
        catch(Exception ee){}
        
        return Rs;
    }
    

}
