
package Entity;


public class puser {
  private  String pcat;
  private  String pname;
  private  String pprice;
  private  String pdes;

   
  private  String pimg;

    public puser() {
    }
    
    
     public puser(String pcat) {
        this.pcat = pcat;
    }

    public puser(String pcat, String pname, String pprice, String pdes, String pimg) {
        this.pcat = pcat;
        this.pname = pname;
        this.pprice = pprice;
        this.pdes = pdes;
        this.pimg = pimg;
    }

    public String getPcat() {
        return pcat;
    }

    public void setPcat(String pcat) {
        this.pcat = pcat;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPprice() {
        return pprice;
    }

    public void setPprice(String pprice) {
        this.pprice = pprice;
    }

    public String getPdes() {
        return pdes;
    }

    public void setPdes(String pdes) {
        this.pdes = pdes;
    }

    public String getPimg() {
        return pimg;
    }

    public void setPimg(String pimg) {
        this.pimg = pimg;
    }
    
}
