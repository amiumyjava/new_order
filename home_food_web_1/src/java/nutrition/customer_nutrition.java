/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nutrition;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author isuru udana
 */
public class customer_nutrition  {
    
    
     public static float protien, carbohydrate, fat;
  public static float all_protien, all_carbohydrate, all_fat;
 
    
     public static  void nutrition(String food,int i){
        protien=0; carbohydrate=0; fat=0;
    String q2= null;
         
       
          
     try{ 
        Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
        Statement st2= conn.createStatement();
          ResultSet rs2=null;
           if (i==1){
          customer_vitamins.findvegitableID(food,1);
          q2="SELECT * FROM `content_nutrition_for_rice` WHERE `RiceId`='"+customer_vitamins.variableID1+"'";
       
          rs2=st2.executeQuery(q2);
           }
           if (i==2){
          customer_vitamins.findvegitableID(food,2);
          q2="SELECT * FROM `content_nutrition_for_vegetables` WHERE `vegitableId` ='"+customer_vitamins.variableID1+"'";
        
         rs2=st2.executeQuery(q2);
           }
           if (i==3){
          customer_vitamins.findvegitableID(food,3);
          q2="SELECT * FROM `content_nutrition_for_meat_and_fish` WHERE meat_and_fishId ='"+customer_vitamins.variableID1+"'";
        
          rs2=st2.executeQuery(q2);
           }
           if (i==4){
          customer_vitamins.findvegitableID(food,4);
          q2="SELECT * FROM `content_nutrition_for_dessert` WHERE dessertId ='"+customer_vitamins.variableID1+"'";
       
         rs2=st2.executeQuery(q2);
           }
     
           
           while (rs2.next()){
         protien = rs2.getFloat("protien");
      carbohydrate =rs2.getFloat("carbohydrate");
       fat=rs2.getFloat("fat");
         all_protien+=rs2.getFloat("protien"); 
          all_carbohydrate+=rs2.getFloat("carbohydrate");
          all_fat+=rs2.getFloat("fat");
        }
       
         
               conn.close();
               rs2.close();
               st2.close();
         
      }catch(Exception e){
       System.out.println(e);}
         

     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


