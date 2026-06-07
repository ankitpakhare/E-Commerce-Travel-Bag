//package servlet;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import dao.UserDAO;
//import model.Order;
//
//@WebServlet("/PlaceOrderServlet")
//public class PlaceOrderServlet extends HttpServlet {
//
//    protected void doPost(HttpServletRequest request,
//            HttpServletResponse response)
//            throws ServletException, IOException {
//
//        String name = request.getParameter("name");
//        String mobile = request.getParameter("mobile");
//        String address = request.getParameter("address");
//
//        double total = Double.parseDouble(
//                request.getParameter("total"));
//
//        Order order = new Order(
//                name,
//                mobile,
//                address,
//                total
//        );
//
//        UserDAO dao = new UserDAO();
//
//        boolean status = dao.placeOrder(order);
//
//        if(status){
//
//            response.sendRedirect(
//                    "jsp/success.jsp");
//
//        } else {
//
//            response.getWriter()
//            .println("Order Failed");
//        }
//    }
//}

package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.Order;

@WebServlet("/PlaceOrderServlet")
public class PlaceOrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String name =
                request.getParameter("name");

        String mobile =
                request.getParameter("mobile");

        String address =
                request.getParameter("address");

        double total =
        Double.parseDouble(
                request.getParameter("total"));

        Order order = new Order(
                name,
                mobile,
                address,
                total
        );

        UserDAO dao = new UserDAO();

        boolean status =
                dao.placeOrder(order);

        if(status){

            response.sendRedirect(
                    "jsp/success.jsp");

        } else {

            response.getWriter()
            .println("Order Failed");
        }
    }
}