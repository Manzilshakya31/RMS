/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.Menu;
import Model.Restaurant;
import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author manzilshakya
 */
public class MenuService {

    public List<Menu> getUserList() {
        List<Menu> userlist = new ArrayList<>();

        String query = "select * from NPP";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Menu st = new Menu();
                st.setnId(rs.getInt("nid"));
                st.setnname(rs.getString("nname"));
                st.setndesc(rs.getString("ndesc"));
                st.setnprice(rs.getString("nprice"));
                System.out.println(st.getnId() + " " + st.getnname() + " " + st.getnprice());
                userlist.add(st);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userlist;
    }

    public Menu getUserRow(int id) {            //for edit
        Menu st = new Menu();
        String query = "select * from NPP where nid=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                st.setnId(rs.getInt("nid"));
                st.setnname(rs.getString("nname"));
                st.setndesc(rs.getString("ndesc"));
                st.setnprice(rs.getString("nprice"));
            }
            System.out.println("I m in service");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return st;
    }

    public Menu delete(int id) {            //for delete
        Menu st = new Menu();
        String query = "delete from NPP where nid=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                st.setnId(rs.getInt("nid"));
//                st.setnname(rs.getString("nname"));
//                st.setndesc(rs.getString("ndesc"));
//                st.setnprice(rs.getString("nprice"));
//            }
//            System.out.println("I m in service");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return st;
    }
    
    public void updateUser(Menu stu) {
        String query = "update NPP set nname=? ,ndesc=? ,nprice=? where nid=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getnname());
            ps.setString(2, stu.getndesc());
            ps.setString(3, stu.getnprice());
            ps.setInt(4, stu.getnId());
            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
            e.printStackTrace();
        }
    }

    public void deleteUser(int id) {
        String query = "delete from NPP where nid = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void insertUser(Menu stu) {
        String query = "insert into NPP(nname,ndesc, nprice)" + "values(?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getnname());
            ps.setString(2, stu.getndesc());
            ps.setString(3, stu.getnprice());
            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        MenuService us = new MenuService();
        Menu std = new Menu();

        std.setnname("");
        std.setndesc("");
        std.setnprice("");

        us.insertUser(std);
    }

}
