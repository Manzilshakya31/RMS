/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author manzilshakya
 */
public class booking {
    private int did;
    private String dname;
    private String description;
    private String Status;
    private int rid;
    
    
    public int getdId() {
        return did;
    }

    public void setdId(int did) {
        this.did = did;
    }
    
     public String getdname() {
        return dname;
    }

    public void setdname(String dname) {
        this.dname = dname;
    }

    public String getdescription() {
        return description;
    }

    public void setdescription(String description) {
        this.description = description;
    }
    
    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }
    
    public int getrId() {
        return rid;
    }

    public void setrId(int rid) {
        this.rid = rid;
    }

    public static void main(String[] args) {
        Menu mt = new Menu();

    }
}
