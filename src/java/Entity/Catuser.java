
package Entity;


public class Catuser {
  
 private  String ctitle;
  private  String des;

    public Catuser() {
    }

    public Catuser(String ctitle) {
        this.ctitle = ctitle;
    }

    public Catuser(String ctitle, String des) {
        this.ctitle = ctitle;
        this.des = des;
    }

    public String getCtitle() {
        return ctitle;
    }

    public void setCtitle(String ctitle) {
        this.ctitle = ctitle;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    
    
}
