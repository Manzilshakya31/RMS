package Service;

import DBConnection.DBConnection;
import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserService {

    public void insertUser(Student stu) {
        String query = "insert into ulogin(uname,uemail,upassword)" + "values(?,?,?)";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getUsername());
            ps.setString(2, stu.getemail());
            ps.setString(3, stu.getPassword());
            ps.execute();
        } catch (SQLException e) {
            System.out.println("errrrr " + e);
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        UserService us = new UserService();
        Student std = new Student();
        
        std.setUsername("");
        std.setemail("");
        std.setPassword("");
        
        us.insertUser(std);
    }

    public Student login(String email, String password) {
        Student st = null;
        String query = "select * from ulogin where uemail=? and upassword=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, email);
            ps.setString(2, password);
            System.out.println(email + " " + password);
            ResultSet rs = ps.executeQuery();
            System.out.println("1");
            while (rs.next()) {
                System.out.println("2");
                st = new Student();
//                st.setId(rs.getInt("uid"));
                st.setUsername(rs.getString("uemail"));
//                st.setFullname(rs.getString("fname"));
                st.setPassword(rs.getString("upassword"));
                System.out.println(st.getUsername()+ " " + st.getPassword());
                return st;
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return st;
    }
    
   public void forgot(Student stu) {
        String query = "update ulogin set upassword=? where uemail=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(1, stu.getPassword());
            ps.setString(2, stu.getemail());
            
            
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
