/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projectpackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Shashank Shekhar
 */
public class DbManager {          /* create a class   */
    Connection con=null;          /* declare variable   */
   PreparedStatement ps=null;
    ResultSet rs=null;
    public DbManager()            /* make a constructor  */
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex)
        {
            ex.printStackTrace();
        }
    }
    public Connection getcon()     /*make a getcon()method for return connection interface   */
    {
        try{
     con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmsdb","root","");   /* code to establish the connection b/w backend and frontend  */
        }
        catch(SQLException ex1)
                {
                 con=null;    /*if any exception is there then connection return null value    */
                }
        return con;   /* return statement  */   
    }
    public boolean executeNonQuery(String query)   /*create a method for insert update and delete query   */
    {
        try{
       con=getcon();
       ps=con.prepareStatement(query);    /* it tells about the query of sql statement  */
        ps.executeUpdate();          /* executeUpdate() method is used to return the value of insert update and delete query  */
        return true;
        }
        catch(SQLException ex)
        {
            return false;
        }
            
    }
  public ResultSet selectQuery(String query)    /*this method is used for select query   */
  {
   con=getcon();
   try
   {
       ps=(PreparedStatement)con.prepareStatement(query);
       rs=ps.executeQuery();                 /* this method is used to return the value of select query */
       return rs;
   }
   catch(SQLException ex)
   {
       return rs;
   }
   
   
  }
  public String gateDate()
  {
      Date d=new Date();
      SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
       return df.format(d); /*return today date*/
      
  }

   

  
}

