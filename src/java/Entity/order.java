
package Entity;


public class order {
    
  private  String email;
   private String mob;
     private String add;
   private String Pprice;
     private String Pname;
     private String Pcode;

    public String getPcode() {
        return Pcode;
    }

    public void setPcode(String Pcode) {
        this.Pcode = Pcode;
    }

    public order(String email, String mob, String add, String Pprice, String Pname, String Pcode) {
        this.email = email;
        this.mob = mob;
        this.add = add;
        this.Pprice = Pprice;
        this.Pname = Pname;
        this.Pcode = Pcode;
    }

   

    public String getPprice() {
        return Pprice;
    }

    public void setPprice(String Pprice) {
        this.Pprice = Pprice;
    }

    public String getPname() {
        return Pname;
    }

    public void setPname(String Pname) {
        this.Pname = Pname;
    }

    public order(String email, String mob, String add, String Pprice, String Pname) {
        this.email = email;
        this.mob = mob;
        this.add = add;
        this.Pprice = Pprice;
        this.Pname = Pname;
    }

    public order(String email, String mob, String add) {
        this.email = email;
        this.mob = mob;
        this.add = add;
    }

    public order() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }
    
}
