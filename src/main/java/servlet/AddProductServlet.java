package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.Product;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String category = request.getParameter("category");

        double price = Double.parseDouble(
                request.getParameter("price"));

        String image = request.getParameter("image");

        Product product = new Product(
                name,
                category,
                price,
                image
        );

        UserDAO dao = new UserDAO();

        boolean status = dao.addProduct(product);

        if(status) {

            response.sendRedirect("jsp/addProduct.jsp");

        } else {

            response.getWriter().println("Product Not Added");

        }
    }
}