
package Entity;

public class User {
    
    String name;
    String email;
    String pass;
    String mob;

    public User(String name, String email, String pass, String mob) {
        this.name = name;
        this.email = email;
        this.pass = pass;
        this.mob = mob;
    }

    public User() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }
    
}
