package Model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author manzilshakya
 */
public class Restaurant {

    private int rid;
    private String rname;
    private String remail;
    private String rpassword;
    
    public int getrId() {
        return rid;
    }

    public void setrId(int rid) {
        this.rid = rid;
    }

    public String getrPassword() {
        return rpassword;
    }

    public void setrPassword(String rpassword) {
        this.rpassword = rpassword;
    }

    public String getrname() {
        return rname;
    }

    public void setrname(String rname) {
        this.rname = rname;
    }
    
    public String getremail() {
        return remail;
    }

    public void setremail(String remail) {
        this.remail = remail;
    }

    public static void main(String[] args) {
        Restaurant std = new Restaurant();

    }
}
