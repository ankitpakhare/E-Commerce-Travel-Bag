package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.Product;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(
                request.getParameter("id"));

        UserDAO dao = new UserDAO();

        Product p = dao.getProductById(id);

        boolean status = dao.addToCart(p);

        if(status) {

            response.sendRedirect("jsp/cart.jsp");

        } else {

            response.getWriter().println("Cart Failed");
        }
    }
}