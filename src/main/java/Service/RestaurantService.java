/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DBConnection.DBConnection;
import Model.Restaurant;
import Model.Student;
//import Service.UserService;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author manzilshakya
 */
public class RestaurantService {

    public void insertUser(Restaurant stu) {
        String query = "insert into restaurant(rname,remail, rpassword)" + "values(?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getrname());
            ps.setString(2, stu.getremail());
            ps.setString(3, stu.getrPassword());
            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        RestaurantService us = new RestaurantService();
        Restaurant std = new Restaurant();

        std.setrname("");
        std.setremail("");
        std.setrPassword("");

        us.insertUser(std);
    }

    public Restaurant login(String username, String password) {
        Restaurant st = null;
        String query = "select * from restaurant where rname=? and rpassword=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                st = new Restaurant();

                st.setrname(rs.getString("rname"));

                st.setrPassword(rs.getString("rpassword"));
                return st;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return st;
    }

    public void forgot(Restaurant stu) {
        String query = "update restaurant set rpassword=? where rname=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getrPassword());
            ps.setString(2, stu.getrname());

            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
            e.printStackTrace();
        }
    }

    public List<Student> getUserList() {
        List<Student> userlist = new ArrayList<>();

        String query = "select * from restaurant";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Student st = new Student();
                st.setId(rs.getInt("rid"));
                st.setUsername(rs.getString("rname"));
                st.setPassword(rs.getString("rpassword"));
                System.out.println(st.getId() + " " + st.getUsername() + " " + st.getPassword());
                userlist.add(st);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userlist;
    }

    public Student getUserRow(int id) {
        Student st = new Student();
        String query = "select * from restaurant where rid=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                st.setId(rs.getInt("rid"));
                st.setUsername(rs.getString("rname"));
                st.setPassword(rs.getString("rpassword"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return st;
    }

    public void updateUser(Restaurant stu) {
        String query = "update restaurant set rname=? ,rpassword=? where rid=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getrname());
            ps.setString(2, stu.getrPassword());
            ps.setInt(3, stu.getrId());
            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
            e.printStackTrace();
        }
    }
    
    
     public void logout(HttpServletRequest request, HttpServletResponse response){
            try{
            	HttpSession session = request.getSession();
            	session.invalidate();
            } 
            catch(Exception e){
            	e.printStackTrace();
            }
}
}
