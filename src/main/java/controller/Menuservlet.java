/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

//import Hashing.HashPassword;
import Model.Menu;
//import Model.Restaurant;
//import Model.Student;
import Service.MenuService;
//import Service.RestaurantService;
//import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

/**
 *
 * @author manzilshakya
 */
@WebServlet(name = "Menuservlet", urlPatterns = {"/Menuservlet"})
public class Menuservlet extends HttpServlet {

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

        if (page.equalsIgnoreCase("nlist")) {

            Menu st = new Menu();
            List<Menu> stList = new MenuService().getUserList();
            System.out.println(stList.size());
            out.println(stList.size());
            request.setAttribute("user", st);
            request.setAttribute("userlist", stList);
            RequestDispatcher rd = request.getRequestDispatcher("Restaurant/NPP.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("userdetails")) {             //-----------For edit
            System.out.println("================================");
            int id = Integer.parseInt(request.getParameter("id"));
            
            System.out.println("id");
            System.out.println("I m in servlet");
            
            Menu st = new MenuService().getUserRow(id);
            System.out.println(st.getnId() + " " + st.getnname() + " " + st.getnname() + " " + st.getnprice());

            request.setAttribute("id", id);
            request.setAttribute("usr", st);

            RequestDispatcher rd = request.getRequestDispatcher("medit.jsp");
            rd.forward(request, response);
        }
        
        if (page.equalsIgnoreCase("deleteuser")) {                          //-------------For delete
//            System.out.println("================================");
            int id = Integer.parseInt(request.getParameter("id"));
            MenuService userService = new MenuService();
            userService.deleteUser(id);
            List<Menu> userList = new MenuService().getUserList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Reservlet?page=mlist");
            rd.forward(request, response);
//            
//            System.out.println("id");
//            System.out.println("I m in servlet");
            
//            Menu st = new MenuService().delete(id);
//            System.out.println(st.getnId() + " " + st.getnname() + " " + st.getnname() + " " + st.getnprice());

//            request.setAttribute("id", id);
//            request.setAttribute("usr", st);
//
//            RequestDispatcher rd = request.getRequestDispatcher("medit.jsp");
//            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("editUser")) {
            Menu st = new Menu();
            System.out.println(request.getParameter("id") + " " + request.getParameter("name"));
            st.setnId(Integer.parseInt(request.getParameter("id")));
            st.setnname(request.getParameter("name"));
            st.setndesc(request.getParameter("desc"));
            st.setnprice(request.getParameter("price"));
            new MenuService().updateUser(st);
//            out.print("Data inserted");
            RequestDispatcher rd = request.getRequestDispatcher("Reservlet?page=mlist");
            rd.forward(request, response);
        }
        
        if (page.equalsIgnoreCase("clist")) {

            Menu st = new Menu();
            List<Menu> stList = new MenuService().getUserList();
            System.out.println(stList.size());
            out.println(stList.size());
            request.setAttribute("user", st);
            request.setAttribute("userlist", stList);
            RequestDispatcher rd = request.getRequestDispatcher("menu1.jsp");
            rd.forward(request, response);
        }

        
        if(page.equalsIgnoreCase("deleteuser")){
//            int id = Integer.parseInt(request.getParameter("id"));
//            new UserService().deleteUser(id);
//            out.print("Cat");
            Menu st = new Menu();
            List<Menu> stList = new MenuService().getUserList();
            out.println(stList.size());
            request.setAttribute("user", st);
            request.setAttribute("userlist", stList);
            RequestDispatcher rd = request.getRequestDispatcher("pages/userlist.jsp");
            rd.forward(request,response);
            
        }
        
        if (page.equalsIgnoreCase("add")) {
          RequestDispatcher rd1 = request.getRequestDispatcher("login/addmenu.jsp");
            rd1.forward(request, response);  
        }
        
        if (page.equalsIgnoreCase("addlist")) {
            Menu st = new Menu();

            st.setnname(request.getParameter("nname"));
            st.setndesc(request.getParameter("ndesc"));
            st.setnprice(request.getParameter("nprice"));
            System.out.println(st.getnname());
            System.out.println(st.getnname());
            

            new MenuService().insertUser(st);
            System.out.println("Data insert vayo check");
            RequestDispatcher rd1 = request.getRequestDispatcher("Reservlet?page=mlist");
            rd1.forward(request, response);
            out.print("Data inserted");

        } else if (page.equalsIgnoreCase("register")) {
//            RequestDispatcher rd = request.getRequestDispatcher("Restaurant/register.jsp");
            RequestDispatcher rd = request.getRequestDispatcher("login/rregister.jsp");
            rd.forward(request, response);

        }
    }
}
