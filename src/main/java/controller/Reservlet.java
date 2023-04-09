/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Hashing.HashPassword;
import Model.Menu;
import Model.Restaurant;
import Model.Student;
import Service.MenuService;
import Service.RestaurantService;
import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author manzilshakya
 */
@WebServlet(name = "Reservlet", urlPatterns = {"/Reservlet"})
public class Reservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String page = request.getParameter("page");
//        PrintWriter out = response.getWriter();

        if (page.equalsIgnoreCase("newUsers")) {
            Restaurant st = new Restaurant();

            st.setrname(request.getParameter("rname"));
            st.setremail(request.getParameter("remail"));
            st.setrPassword(HashPassword.hashThisPass(request.getParameter("rpassword")));

            new RestaurantService().insertUser(st);
            System.out.println("Data insert vayo check");
            RequestDispatcher rd1 = request.getRequestDispatcher("Reservlet?page=mlist.jsp");
            rd1.forward(request, response);
            out.print("Data inserted");

        } else if (page.equalsIgnoreCase("register")) {
//            RequestDispatcher rd = request.getRequestDispatcher("Restaurant/register.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("login/rregister.jsp");
            rd.forward(request, response);

        } else if (page.equalsIgnoreCase("login")) {
            Restaurant st = new Restaurant();

            String rname = request.getParameter("rname");
            String rpassword = HashPassword.hashThisPass(request.getParameter("rpassword"));
            st = new RestaurantService().login(rname, rpassword);

            if (st != null) {
                HttpSession sess = request.getSession();
                sess.setAttribute("rname", rname);
//                System.out.println("11");
                RequestDispatcher rd2 = request.getRequestDispatcher("Reservlet?page=mlist");
//                RequestDispatcher rd2 = request.getRequestDispatcher("Restaurant/detail.jsp");
                rd2.forward(request, response);
            } else {
                out.println("incorrecnt");
                RequestDispatcher rd3 = request.getRequestDispatcher("login/rregister.jsp");
                rd3.forward(request, response);
            }
        }

        if (page.equalsIgnoreCase("forgot")) {
            Restaurant st = new Restaurant();
            //System.out.println(request.getParameter("uemail") + " " + request.getParameter("upassword"));
            st.setrname(request.getParameter("uname"));
            st.setrPassword(request.getParameter("upassword"));

            st.setrPassword(HashPassword.hashThisPass(request.getParameter("upassword")));
            new RestaurantService().forgot(st);

            System.out.println("Data changed");
            RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
            rd1.forward(request, response);
        }
        /*  trial    */
//        if (page.equalsIgnoreCase("rlist")) {
//
//            Student st = new Student();
//            List<Student> stList = new RestaurantService().getUserList();
//            System.out.println(stList.size());
//            out.println(stList.size());
//            request.setAttribute("user", st);
//            request.setAttribute("userlist", stList);
//            RequestDispatcher rd = request.getRequestDispatcher("Restaurant/detail.jsp");
//            rd.forward(request, response);
//        }
//Ends here

        if (page.equalsIgnoreCase("mlist")) {

            Menu st = new Menu();
            List<Menu> stList = new MenuService().getUserList();
            System.out.println(stList.size());
            out.println(stList.size());
            request.setAttribute("user", st);
            request.setAttribute("userlist", stList);
            RequestDispatcher rd = request.getRequestDispatcher("1r.jsp");
            rd.forward(request, response);
        }

//        if (page.equalsIgnoreCase("userdetails")) {
//            System.out.println("================================");
//            int id = Integer.parseInt(request.getParameter("nid"));
//            Menu st = new MenuService().getUserRow(id);
//            System.out.println(st.getnId() + " " + st.getnname() + " " + st.getnprice());
//
//            request.setAttribute("nid", id);
//            request.setAttribute("usr", st);
//
//            RequestDispatcher rd = request.getRequestDispatcher("medit.jsp");
//            rd.forward(request, response);
//        }
//
//        if (page.equalsIgnoreCase("editUser")) {
//            Restaurant st = new Restaurant();
//            System.out.println(request.getParameter("id") + " " + request.getParameter("username"));
//            st.setrId(Integer.parseInt(request.getParameter("id")));
//            st.setrname(request.getParameter("username"));
//            st.setrPassword(HashPassword.hashThisPass(request.getParameter("password")));
//            System.out.println("Data:" + st.getrId() + st.getrname() + st.getrPassword());
//            new RestaurantService().updateUser(st);
//            out.print("Data inserted");
//        }
        //trial 
        if (page.equalsIgnoreCase("userdetails")) {
            System.out.println("================================");
            int id = Integer.parseInt(request.getParameter("nid"));
            Student st = new RestaurantService().getUserRow(id);
            System.out.println(st.getId() + " " + st.getUsername() + " " + st.getPassword());

            request.setAttribute("id", id);
            request.setAttribute("usr", st);

            RequestDispatcher rd = request.getRequestDispatcher("Restaurant/redit.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("editUser")) {
            Restaurant st = new Restaurant();
            System.out.println(request.getParameter("id") + " " + request.getParameter("username"));
            st.setrId(Integer.parseInt(request.getParameter("id")));
            st.setrname(request.getParameter("username"));
            st.setrPassword(HashPassword.hashThisPass(request.getParameter("password")));
            System.out.println("Data:" + st.getrId() + st.getrname() + st.getrPassword());
            new RestaurantService().updateUser(st);
            out.print("Data inserted");
        }
//trial ends here

        if (page.equalsIgnoreCase("logout")) {
            HttpSession sess = request.getSession(false);
            sess.invalidate();

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
    }
    
   
}
