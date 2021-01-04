/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.Message;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author zaid
 */
public class sendemail {
  
    
    public String getcode(){
        Random rnd=new Random();
        
        int number=rnd.nextInt(999999);
        return String.format("%06d", number);
    }
    
    
    
    public boolean sendemail(order od){
        boolean f=false;
       
       String to= od.getEmail();
       String subject="Order Success";
       String fro="zaidcoder01@gmail.com";
        
       String host="smtp.gmail.com";
       Properties pr=new Properties();
       
       pr.put("mail.smtp.host",host);
       pr.put("mail.smtp.port","465");
       pr.put("mail.smtp.ssl.enable","true");
       pr.put("mail.smtp.auth","true");
       
       Session s = Session.getInstance(pr, new Authenticator(){
              @Override
           
           protected PasswordAuthentication getPasswordAuthentication(){
               
               return new PasswordAuthentication("zaidcoder01@gmail.com","shahzaid10100");
           }
           
          
          });
      s.setDebug(true);
      
      MimeMessage m= new MimeMessage(s);
      
      try{
              
        m.setFrom(fro);
         m.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
         
         m.setSubject(subject);
         
         m.setText(" ***** Z & T  SHOPPING ***** "+"\n"+"\n" +"Order Code :-"+od.getPcode()+"\n"+"Product Name :-  "+od.getPname()+"\n"+"Product Price :- "+od.getPprice()+"\n"+"Mobile no:-  "+od.getMob()+"\n"+"Shipping Add :- "+od.getAdd()+"\n");
          
         
         Transport.send(m);
         
         System.out.println("Sent success...................");
          
      }
      
      catch(Exception e){
          
          e.printStackTrace();
      }
      
      
        return f;
    }
      
}
