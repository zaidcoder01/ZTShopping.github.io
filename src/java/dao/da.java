
package dao;

import Entity.Catuser;
import Entity.User;
import Entity.order;
import Entity.puser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class da {
    Connection con;
    
    public da(Connection con) {
        this.con = con;
    }
    
    public boolean savec(Catuser catuser){
        boolean f=false;
        
        try {
            PreparedStatement pst=this.con.prepareStatement("INSERT INTO category(ctitle,des) VALUES(?,?)");
            pst.setString(1,catuser.getCtitle());
            pst.setString(2,catuser.getDes());
            
            pst.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
  
        return f;
    }
    public boolean savepro(puser pro){
        boolean f=false;
        
        try {
            PreparedStatement pst=this.con.prepareStatement("INSERT INTO product(catid,pname,pprice,des,img) VALUES(?,?,?,?,?)");
            pst.setString(1,pro.getPcat());
            pst.setString(2,pro.getPname());
            pst.setString(3,pro.getPprice());
            pst.setString(4,pro.getPdes());
            pst.setString(5,pro.getPimg());
            
            pst.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return f;
    }
     public List<Catuser> getcat(){
       
        List<Catuser>list=new ArrayList<>();
        
        try {
            PreparedStatement pst=this.con.prepareStatement("SELECT * FROM category");
            ResultSet rst=pst.executeQuery();
            
            while(rst.next())
            {
               String tit=rst.getString("ctitle");
              
               Catuser c=new Catuser(tit);
               list.add(c);
              
               
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
        
        
        return list;
    }
    
     public List<puser> pd(){
       
        List<puser>list=new ArrayList<>();
        
        
            PreparedStatement pst;
        try {
            pst = this.con.prepareStatement("SELECT * FROM product");
            ResultSet rst=pst.executeQuery();
            
            while(rst.next())
            {
               String tit=rst.getString("catid");
               String tt=rst.getString("pname");
               String ti=rst.getString("pprice");
               String t=rst.getString("des");
               String tm=rst.getString("img");
              
               puser c=new puser(tit,tt,ti,t,tm);
               
               list.add(c);
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
            

            
        
        
        
        return list;
    }
     public List<puser> pci(String ci){
       
        List<puser>list=new ArrayList<>();
        
        
            PreparedStatement pst;
        try {
            pst = this.con.prepareStatement("SELECT * FROM product WHERE catid=?");
            pst.setString(1, ci);
            ResultSet rst=pst.executeQuery();
            
            while(rst.next())
            {
               String tit=rst.getString("catid");
               String tt=rst.getString("pname");
               String ti=rst.getString("pprice");
               String t=rst.getString("des");
               String tm=rst.getString("img");
              
               puser c=new puser(tit,tt,ti,t,tm);
               
               list.add(c);
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
            

            
        
        
        
        return list;
    }
     public List<puser> pcid(String ci){
       
        List<puser>list=new ArrayList<>();
        
        
            PreparedStatement pst;
        try {
            pst = this.con.prepareStatement("SELECT * FROM product WHERE pname=?");
            pst.setString(1, ci);
            ResultSet rst=pst.executeQuery();
            
            while(rst.next())
            {
               String tit=rst.getString("catid");
               String tt=rst.getString("pname");
               String ti=rst.getString("pprice");
               String t=rst.getString("des");
               String tm=rst.getString("img");
              
               puser c=new puser(tit,tt,ti,t,tm);
               
               list.add(c);
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
            

            
        
        
        
        return list;
    }
     
       public boolean oder(order ord){
        boolean f=false;
        
        try {
            PreparedStatement pst=this.con.prepareStatement("INSERT INTO ord(email,mob,ad) VALUES(?,?,?)");
             pst.setString(1,ord.getEmail());
             pst.setString(2,ord.getMob());
             pst.setString(3,ord.getAdd());
            pst.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
  
        return f;
    }
        public List<order> odp(){
       
        List<order>list=new ArrayList<>();
        
        
            PreparedStatement pst;
        try {
            pst = this.con.prepareStatement("SELECT * FROM ord");
           
            ResultSet rst=pst.executeQuery();
            
            while(rst.next())
            {
               String tit=rst.getString("email");
               String tt=rst.getString("mob");
               String ti=rst.getString("ad");
              
              
               order c=new order(tit,tt,ti);
               
               list.add(c);
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
            

            
        
        
        
        return list;
    }
         public boolean saveuser(User user){
        boolean f=false;
        
        try {
            PreparedStatement pst=this.con.prepareStatement("INSERT INTO user(name,email,pass,mob) VALUES(?,?,?,?)");
          pst.setString(1,user.getName());
          pst.setString(2,user.getEmail());
          pst.setString(3,user.getPass());
          pst.setString(4,user.getMob());
            
            
            pst.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        return f;
    }
     
          public User lo(String email, String pass){
       
               User user=null;
          PreparedStatement pst;
        try {
            pst = this.con.prepareStatement("SELECT * FROM user where email=? and pass=?");
           pst.setString(1,email);
           pst.setString(2,pass);
            
            ResultSet rst=pst.executeQuery();
            
            while(rst.next())
            { 
                user=new User();
               String tit=rst.getString("email");
               String tt=rst.getString("pass");
        
               user.setEmail(email);
               user.setPass(pass);
               
            }
        } catch (SQLException ex) {
            Logger.getLogger(da.class.getName()).log(Level.SEVERE, null, ex);
        }
       return user;
    }
}
