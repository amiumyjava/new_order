/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**   
 *
 * @author isuru udana
 */
public class NewClass1 {
    
    
    public static float k=0;
    public static float h=0;
    public static int f;
    
     public static void k(){ 
     try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
        Statement st = conn.createStatement(); 
      
     
      
     
     }catch(Exception e){
       System.out.println(e);}
}

}
