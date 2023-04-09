package Model;

public class Student {

    private int id;
    private String username;
    private String email;
    private String password;
    private String rname;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getrname() {
        return rname;
    }

    public void setrname(String username) {
        this.rname = rname;
    }

    public static void main(String[] args) {
        Student std = new Student();

    }
}
