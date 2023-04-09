/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Model.Student;
import Service.RestaurantService;
import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "RServlet", urlPatterns = {"/RServlet"})
public class RServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("newuser")) {
            Student st = new Student();

            st.setUsername(request.getParameter("uname"));
            st.setemail(request.getParameter("uemail"));
            st.setPassword(request.getParameter("upassword"));

            new UserService().insertUser(st);
            RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
            rd1.forward(request, response);
            
        } else if (page.equalsIgnoreCase("register")) {
            RequestDispatcher rd = request.getRequestDispatcher("pages/register.jsp");
            rd.forward(request, response);

        } else if (page.equalsIgnoreCase("newLogin")) {
            Student st1 = new Student();
            st1.setemail(request.getParameter("uemail"));
            st1.setPassword(request.getParameter("upassword"));

            st1 = new UserService().login(st1.getemail(), st1.getPassword());
            RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
            rd1.forward(request, response);
        } else if (page.equalsIgnoreCase("login")) {
            Student st = new Student();

            String uname = request.getParameter("username");
            String upassword = request.getParameter("password");
//            st = new RestaurantService().login(uname, upassword);

            if (st != null) {
                HttpSession sess = request.getSession();
                sess.setAttribute("username", uname);

                RequestDispatcher rd2 = request.getRequestDispatcher("Restaurant/rindex.jsp");
                rd2.forward(request, response);
            } else {
                out.println("incorrect");
                RequestDispatcher rd3 = request.getRequestDispatcher("../index.jsp");
                rd3.forward(request, response);
            }
        }
        
    }
}
