/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Hashing.HashPassword;
import Model.Student;
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
@WebServlet(name = "NewServlet", urlPatterns = {"/user"})
public class NewServlet extends HttpServlet {

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

            st.setPassword(HashPassword.hashThisPass(request.getParameter("upassword")));
//            new UserService().login(st.getUsername(),st.getPassword());

            new UserService().insertUser(st);
            RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
            rd1.forward(request, response);
            //            out.print("Data inserted");
        } else if (page.equalsIgnoreCase("register")) {
            RequestDispatcher rd = request.getRequestDispatcher("pages/register.jsp");
            rd.forward(request, response);

        } else if (page.equalsIgnoreCase("newLogin")) {
            Student st = new Student();

            String uemail = request.getParameter("uemail");
            String upassword = HashPassword.hashThisPass(request.getParameter("upassword"));
            st = new UserService().login(uemail, upassword);

            if (st != null) {
                HttpSession sess = request.getSession();
                sess.setAttribute("uemail", uemail);

                RequestDispatcher rd2 = request.getRequestDispatcher("1.jsp");
                rd2.forward(request, response);
            } else {
                
                out.println("incorrecnt");
                RequestDispatcher rd3 = request.getRequestDispatcher("login/ulogin.jsp");
                rd3.forward(request, response);
            }

        } else if (page.equalsIgnoreCase("login")) {
            Student st = new Student();

            String uname = request.getParameter("uname");
            String upassword = request.getParameter("upassword");
            st = new UserService().login(uname, upassword);

            if (st != null) {
                HttpSession sess = request.getSession();
                sess.setAttribute("username", uname);

                RequestDispatcher rd2 = request.getRequestDispatcher("1.jsp");
                rd2.forward(request, response);
            } else {
                out.println("incorrect");
                
                
                RequestDispatcher rd3 = request.getRequestDispatcher("login/uregister.jsp");
                rd3.forward(request, response);
            }
        }

//        //
//                RequestDispatcher rd = request.getRequestDispatcher("pages/landingpage.jsp");
//                rd.forward(request, response);
        if (page.equalsIgnoreCase("forgot")) {
            Student st = new Student();
            //System.out.println(request.getParameter("uemail") + " " + request.getParameter("upassword"));
            st.setemail(request.getParameter("uemail"));
            st.setPassword(request.getParameter("upassword"));

            st.setPassword(HashPassword.hashThisPass(request.getParameter("upassword")));
            new UserService().forgot(st);

            System.out.println("Data changed");
            RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
            rd1.forward(request, response);
        }

        if (page.equalsIgnoreCase("logout")) {
            HttpSession sess = request.getSession(false);
            sess.invalidate();

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
//        if (page.equalsIgnoreCase("logout")) {
//            new UserService().logout(request, response);
//            System.out.println("abcacnkjasbck");
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
//        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        doPost(request,response);
    }
}
