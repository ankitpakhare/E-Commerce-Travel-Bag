package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.Admin;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet
extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,
            IOException {

        String email =
                request.getParameter("email");

        String password =
                request.getParameter("password");

        UserDAO dao = new UserDAO();

        Admin admin =
                dao.loginAdmin(email, password);

        if(admin != null){

            HttpSession session =
                    request.getSession();

            session.setAttribute(
                    "admin", admin);

            response.sendRedirect(
                    "jsp/admin.jsp");

        } else {

            response.getWriter()
            .println("Invalid Email Or Password");
        }
    }
}