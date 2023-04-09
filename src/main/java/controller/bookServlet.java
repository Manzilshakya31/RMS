/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import Hashing.HashPassword;
import Model.booking;
import Service.bookService;

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
@WebServlet(name = "bookServlet", urlPatterns = {"/bookServlet"})
public class bookServlet extends HttpServlet {

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

        if (page.equalsIgnoreCase("rlist")) {

            booking st = new booking();
            List<booking> stList = new bookService().getUserList();
            System.out.println(stList.size());
            out.println(stList.size());
            request.setAttribute("user", st);
            request.setAttribute("userlist", stList);
//            RequestDispatcher rd = request.getRequestDispatcher("Restaurant/Booking.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("rbook.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("clist")) {

            booking st = new booking();
            List<booking> stList = new bookService().getUserList();
            System.out.println(stList.size());
            out.println(stList.size());
            request.setAttribute("user", st);
            request.setAttribute("userlist", stList);
            RequestDispatcher rd = request.getRequestDispatcher("book.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("userdetails")) {
            System.out.println("================================");
            int id = Integer.parseInt(request.getParameter("id"));
            
            System.out.println("id");
//            System.out.println("I m in servlet");
            
            booking st = new bookService().getUserRow(id);
            System.out.println(st.getdId() + " " + st.getdname() + " " + st.getdescription() + " " + st.getStatus());

            request.setAttribute("id", id);
            request.setAttribute("usr", st);

            RequestDispatcher rd = request.getRequestDispatcher("bedit.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("editUser")) {
            booking st = new booking();
            System.out.println(request.getParameter("id") + " " + request.getParameter("name"));
            st.setdId(Integer.parseInt(request.getParameter("id")));
            st.setdname(request.getParameter("name"));
            st.setdescription(request.getParameter("description"));
            st.setStatus(request.getParameter("Status"));
            new bookService().updateUser(st);
//            out.print("Data inserted");
            RequestDispatcher rd = request.getRequestDispatcher("bookServlet?page=rlist");
            rd.forward(request, response);
        }


        if (page.equalsIgnoreCase("deleteuser")) {                          //-------------For delete
//            System.out.println("================================");
            int id = Integer.parseInt(request.getParameter("id"));
            bookService userService = new bookService();
            userService.deleteUser(id);
            List<booking> userList = new bookService().getUserList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("bookServlet?page=rlist");
            rd.forward(request, response);
        }
    }
}
