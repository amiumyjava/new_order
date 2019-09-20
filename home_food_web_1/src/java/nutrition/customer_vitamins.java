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
public class customer_vitamins {
    
    public static float Vit_A,Vit_Thiamin,Vit_Ribloflevin,Vit_niacin,Vit_pantothenic,Vit_biotin,Vit_piridoxine,Vit_B12,Vit_folic_acid,Vit_C,Vit_D,Vit_E,Vit_k,variableID1;
   public static float all_Vit_A,all_Vit_Thiamin,all_Vit_Ribloflevin,all_Vit_niacin,all_Vit_pantothenic,all_Vit_biotin,all_Vit_piridoxine,all_Vit_B12,all_Vit_folic_acid,all_Vit_C,all_Vit_D2,all_Vit_E2,all_Vit_k2;
  
   // private  int vegetableId,Vitamin_A, Thiamin, Ribloflevin, niacin, pantothenic, biotin, piridoxine, vitamin_B12, folic_acid, Vitamin_C, Vitamin_D,vitamin_E,vitamin_k ;

    
     public static  void vitamins_vegetablesList1(String food,int i){
         Vit_A=0;Vit_Thiamin=0;Vit_Ribloflevin=0;Vit_niacin=0;Vit_pantothenic=0;Vit_biotin=0;Vit_piridoxine=0;Vit_B12=0;Vit_folic_acid=0;Vit_C=0;Vit_D=0;Vit_E=0;Vit_k=0;variableID1=0;
    String q2= null;
        
     try{ 
          Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
          
        ResultSet rs2=null;
      Statement st = conn.createStatement(); 
      if (i==1){
           findvegitableID(food,1);
          q2="SELECT * FROM `content_vitamins_in_rice` WHERE `RiceId`='"+variableID1+"'";
     
      Statement st2= conn.createStatement();
           rs2=st2.executeQuery(q2);
          
           
     }
         
       if (i==2){
           findvegitableID(food,2);
           q2="SELECT * FROM `content_vitamins_in_vegetables` WHERE `vegetableId`='"+ variableID1+"'";
          
          Statement st2= conn.createStatement();
           rs2=st2.executeQuery(q2);
          
          }
        
         if (i==3){
           findvegitableID(food,3);
          q2="SELECT * FROM `content_vitamins_in_meat_and_fish` WHERE `meat_and_fishId`='"+variableID1+"'";
     
      Statement st2= conn.createStatement();
         rs2=st2.executeQuery(q2);
          
          
          
          
          
          
          
      }
         if (i==4){
           findvegitableID(food,4);
          q2="SELECT * FROM `content_vitamins_in_dessert` WHERE dessertId='"+variableID1+"'";
     
      Statement st2= conn.createStatement();
          rs2=st2.executeQuery(q2);
          
          
          
          
          
          
          
      }
        
         
       
         while (rs2.next()){
       
           
            Vit_A = rs2.getFloat("Vitamin_A");
       Vit_Thiamin =rs2.getFloat("Thiamin");
       Vit_Ribloflevin =rs2.getFloat("Ribloflevin");
       Vit_niacin =rs2.getFloat("niacin");
       Vit_pantothenic =rs2.getFloat("pantothenic");
       Vit_biotin =rs2.getFloat("biotin");
       Vit_piridoxine =rs2.getFloat("piridoxine");
       Vit_B12 =rs2.getFloat("vitamin_B12");
       Vit_folic_acid =rs2.getFloat("folic_acid");
       Vit_C =rs2.getFloat("Vitamin_C");
       Vit_D =rs2.getFloat("Vitamin_D");
       Vit_E =rs2.getFloat("vitamin_E");
        Vit_k =rs2.getFloat("vitamin_k");
       
        
        all_Vit_A+=rs2.getFloat("Vitamin_A");
        all_Vit_Thiamin+=rs2.getFloat("Thiamin");
        all_Vit_Ribloflevin+=rs2.getFloat("Ribloflevin");
        all_Vit_niacin+=rs2.getFloat("niacin");
        all_Vit_pantothenic+=rs2.getFloat("pantothenic");
        all_Vit_biotin+=rs2.getFloat("biotin");
        all_Vit_piridoxine+=rs2.getFloat("piridoxine");
        all_Vit_B12+=rs2.getFloat("vitamin_B12");
        all_Vit_folic_acid+=rs2.getFloat("folic_acid");
        all_Vit_C+=rs2.getFloat("Vitamin_C");
        all_Vit_D2+=rs2.getFloat("Vitamin_D");
        all_Vit_E2+=rs2.getFloat("vitamin_E");
        all_Vit_k2+=rs2.getFloat("vitamin_k");
  
        
        
         conn.close();
               rs2.close();
        }
         
       }catch(Exception e){
       System.out.println(e);}
        
     }
   
    
    
     public static void findvegitableID(String food,int i){
      variableID1=0;
      try{ String q1=null;
           Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
       Statement st1= conn.createStatement();
         
       if(i==1){  q1="SELECT * FROM `rice_varieties` WHERE `Name_of_the_Rice`= '"+food+"'";
           
          ResultSet rs1=st1.executeQuery(q1);
     
      while (rs1.next()){
         int variableID=    rs1.getInt("RiceId");
              variableID1=variableID;
       }rs1.close();}
      if(i==2){  q1="SELECT * FROM `vegetables` WHERE  `Name_of_the_Vegetable` = '"+food+"'";
      
          ResultSet rs1=st1.executeQuery(q1);
     
         while (rs1.next()){
         int variableID=    rs1.getInt("VegetableId");
              variableID1=variableID;
       }rs1.close();
       
          }
       if(i==3){  q1="SELECT * FROM `meat_and_fish` WHERE `Name_of_the_Meat_or_Fish`= '"+food+"'";
           
          ResultSet rs1=st1.executeQuery(q1);
     
      while (rs1.next()){
         int variableID=    rs1.getInt("Meat_or_FishId");
              variableID1=variableID;
       }rs1.close();}
       
        if(i==4){  q1="SELECT * FROM `dessert` WHERE `Name_of_the_Dessert`= '"+food+"'";
          
          ResultSet rs1=st1.executeQuery(q1);
     
      while (rs1.next()){
         int variableID=    rs1.getInt("DessertId");
              variableID1=variableID;
       }rs1.close();}
        
        
         conn.close();
         st1.close();
         
       }catch(Exception e){
       System.out.println(e);}
         

      
      
  }   
    
    
    
    
    
   
     
     
     
     
     
     
     
     
     
     
    
    
    
    
}

    
    
    
    
    
    
    
    
    

