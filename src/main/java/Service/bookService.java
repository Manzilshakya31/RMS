/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.booking;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author manzilshakya
 */
public class bookService {
    public List<booking> getUserList() {
        List<booking> userlist = new ArrayList<>();

        String query = "select * from Data";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                booking st = new booking();
                st.setdId(rs.getInt("did"));
                st.setdname(rs.getString("dname"));
                st.setdescription(rs.getString("description"));
                st.setStatus(rs.getString("Status"));
                System.out.println(st.getdId() + " " + st.getdname() + " " + st.getdescription());
                userlist.add(st);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userlist;
    }

    public booking getUserRow(int id) {
        booking st = new booking();
        String query = "select * from Data where did=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                st.setdId(rs.getInt("did"));
                st.setdname(rs.getString("dname"));
                st.setdescription(rs.getString("description"));
                st.setStatus(rs.getString("Status"));
                }

        } catch (SQLException e) {
//            e.printStackTrace();
        }
        return st;
    }

    public void updateUser(booking stu) {
        String query = "update Data set dname=? ,description=? ,Status=? where did=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getdname());
            ps.setString(2, stu.getdescription());
            ps.setString(3, stu.getStatus());
            ps.setInt(4, stu.getdId());
            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
//            e.printStackTrace();
        }
    }
    
    public void deleteUser(int id) {
        String query = "delete from Data where did = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
