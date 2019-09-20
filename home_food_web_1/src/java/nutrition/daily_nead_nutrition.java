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
import static nutrition.customer_vitamins.findvegitableID;
import static nutrition.customer_vitamins.variableID1;

/**
 *
 * @author isuru udana
 */
public class daily_nead_nutrition {
   public static float dn_Vit_A,dn_Vit_Thiamin,dn_Vit_Ribloflevin,dn_Vit_niacin,dn_Vit_pantothenic,dn_Vit_biotin,dn_Vit_piridoxine,dn_Vit_B12,dn_Vit_folic_acid,dn_Vit_C,dn_Vit_D,dn_Vit_E,dn_Vit_k;
      public static float dn_calcium,dn_chloride,dn_chromium,dn_copper, dn_fluoride,dn_Iodine,dn_iron,dn_magnesium, dn_molybdenum, dn_phosphorus,dn_potassium, dn_selenium, dn_znc,dn_sodium;
      public static float dn_protien, dn_carbohydrate, dn_fat;
     
    public static void daly_nead_nutrition(){
    
     try{ 
          Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
          
        ResultSet rs2=null;
      //Statement st = conn.createStatement(); 
   
           
        String  q2="SELECT * FROM `daily_need_nutrition` WHERE 1";
        Statement st2= conn.createStatement();
        rs2=st2.executeQuery(q2);
        int i=0;
          while(rs2.next()){
         i+=1;
          
          if(i==1) { dn_Vit_A= rs2.getFloat("daily_need_quantity");}
            if(i==2)   {  dn_Vit_Thiamin=rs2.getFloat("daily_need_quantity");}
            if(i==3)   { dn_Vit_Ribloflevin=rs2.getFloat("daily_need_quantity");}
            if(i==4)   { dn_Vit_niacin=rs2.getFloat("daily_need_quantity");}
            if(i==5)   {dn_Vit_pantothenic=rs2.getFloat("daily_need_quantity");}
            if(i==6)   {dn_Vit_biotin=rs2.getFloat("daily_need_quantity");}
             if(i==7)  { dn_Vit_piridoxine=rs2.getFloat("daily_need_quantity");}
             if(i==8)  { dn_Vit_B12=rs2.getFloat("daily_need_quantity");}
             if(i==9)  { dn_Vit_folic_acid=rs2.getFloat("daily_need_quantity");}
             if(i==10)  { dn_Vit_C=rs2.getFloat("daily_need_quantity");}
            if(i==11)   { dn_Vit_D=rs2.getFloat("daily_need_quantity");}
             if(i==12)  { dn_Vit_E=rs2.getFloat("daily_need_quantity");}
             if(i==13)  {dn_Vit_k=rs2.getFloat("daily_need_quantity");}
          
              if(i==14) {dn_protien=rs2.getFloat("daily_need_quantity");}
              if(i==15) {dn_carbohydrate=rs2.getFloat("daily_need_quantity");}
              if(i==16) {dn_fat=rs2.getFloat("daily_need_quantity");}
          
              if(i==17) {dn_calcium=rs2.getFloat("daily_need_quantity");}
              if(i==18) {dn_chloride=rs2.getFloat("daily_need_quantity");}
              if(i==19) {dn_chromium=rs2.getFloat("daily_need_quantity");}
            if(i==20)   {dn_copper=rs2.getFloat("daily_need_quantity");}
            if(i==21)   {dn_fluoride=rs2.getFloat("daily_need_quantity");}
             if(i==22)  {dn_Iodine=rs2.getFloat("daily_need_quantity");}
             if(i==23)  {dn_iron=rs2.getFloat("daily_need_quantity");}
             if(i==24)  {dn_magnesium=rs2.getFloat("daily_need_quantity");}
              if(i==25) {dn_molybdenum=rs2.getFloat("daily_need_quantity");}
             if(i==26)  {dn_phosphorus=rs2.getFloat("daily_need_quantity");}
             if(i==27)  {dn_potassium=rs2.getFloat("daily_need_quantity");}
             if(i==28)  {dn_selenium=rs2.getFloat("daily_need_quantity");}
             if(i==29)  {dn_znc=rs2.getFloat("daily_need_quantity");}
             if(i==30)  { dn_sodium=rs2.getFloat("daily_need_quantity");}
         
          }
              conn.close();
               st2.close();
		 rs2.close();
                 
                 
        }catch(Exception e){
       System.out.println(e);}
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
