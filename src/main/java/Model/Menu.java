/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author manzilshakya
 */
public class Menu {
    private int nid;
    private String nname;
    private String ndesc;
    private String nprice;
    private int rid;
    
    
    public int getnId() {
        return nid;
    }

    public void setnId(int nid) {
        this.nid = nid;
    }
    
     public String getnname() {
        return nname;
    }

    public void setnname(String nname) {
        this.nname = nname;
    }

    public String getndesc() {
        return ndesc;
    }

    public void setndesc(String ndesc) {
        this.ndesc = ndesc;
    }
    
    public String getnprice() {
        return nprice;
    }

    public void setnprice(String nprice) {
        this.nprice = nprice;
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
