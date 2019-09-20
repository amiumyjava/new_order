/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author isuru udana
 */
public class NewClass {
    public  static String rice1="x", vegi11="x", vegi21="x", vegi31="x", vegi41="x",meat1="x",desert1="x",quntity1="x", formattedDate="x",onlydate="x";
     public static int nextid=0;
   
     
     public static void nextid(int id){
     nextid=id;
     }
     
public static boolean isNullOrEmpty(String str) {
        if(str != null && !str.isEmpty())
            return false;
        return true;
    }
  
   public static void m(String rice,String vegi1,String vegi2, String vegi3,String vegi4,String meat,String desert,String quntity){
   
     
     rice1="x"; vegi11="x";vegi21="x";vegi31="x"; vegi41="x";meat1="x";desert1="x";quntity1="x"; formattedDate="x";onlydate="x";
     nextid=0;
   
  
    if(isNullOrEmpty(rice)) { }
    else{ rice1= rice;}
         
    
      if(isNullOrEmpty(vegi1)) { }
    else{  vegi11=vegi1;}
         
      
        if(isNullOrEmpty(vegi2)) { }
    else{ vegi21=vegi2;}
         
        
          if(isNullOrEmpty(vegi3)) { }
    else{ vegi31=vegi3;}
         
          
            if(isNullOrEmpty(vegi4)) { }
    else{ vegi41=vegi4;}
         
            
              if(isNullOrEmpty(meat)) { }
    else{  meat1=meat;}
         
    
    
    
              if(isNullOrEmpty(desert)) { }
    else{ desert1=desert;}
         
              
              if(isNullOrEmpty(quntity)) { quntity1="0";}
    else{ quntity1=quntity;}
         
    
   
        
        
      
    
     
     }
     
       
    
    
    
    
    
    
    
    public static  void input_order(){
    getCurrentTimeUsingDate();
   getdate();
                   System.out.println(nextid);
                    System.out.println( rice1);
                      System.out.println(vegi11);
                      System.out.println(vegi21);
                      System.out.println(vegi31);
                      System.out.println(vegi41);
                       System.out.println( meat1);
                        System.out.println(desert1);
                         System.out.println(quntity1);
                          System.out.println( formattedDate);
                           System.out.println(onlydate);
                         System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
                                      
  
   
    try{
           Class.forName("com.mysql.jdbc.Driver");
       Connection conn= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_order","root","");
      Statement st = conn.createStatement(); 
        st = conn.createStatement();
     
    
     st.executeUpdate("INSERT INTO `orderd`(`customerId`, `vegetableId1`, `vegetableId2`, `vegetableId3`, `vegetableId4`, `meat_and_fishId`, `dessertId`, `riceId`, `date`, `time`, `Quntity`) VALUES ( '"+nextid+"','"+vegi11+"','"+vegi21+"','"+vegi31+"','"+vegi41+"','"+meat1+"','"+desert1+"','"+rice1+"','"+onlydate+"','"+formattedDate+"','"+quntity1+"')");
    
               
		st.close();
		conn.close();
                                
                                   
   
       }catch(Exception e){
       System.out.println(e);}
         
    
               
    }
    
    
    public static void getCurrentTimeUsingDate() {
    Date date = new Date();
    String strDateFormat = "hh:mm:ss a";
    DateFormat dateFormat = new SimpleDateFormat(strDateFormat);
    formattedDate= dateFormat.format(date);
   
}
    
    
    public static void getdate(){
     Date date = new Date();  
    SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");  
    String strDate = formatter.format(date);  
   
  
    onlydate=strDate;
    } 
}
