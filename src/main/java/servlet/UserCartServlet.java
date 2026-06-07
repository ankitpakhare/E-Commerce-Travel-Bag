package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBConnection;
import model.User;

@WebServlet("/UserCartServlet")
public class UserCartServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(
	HttpServletRequest request,
	HttpServletResponse response)

	throws ServletException, IOException {

		try {

			int productId =
			Integer.parseInt(
			request.getParameter("id"));

			HttpSession session =
			request.getSession();

			User user =
			(User)session.getAttribute("user");

			Connection con =
			DBConnection.getConnection();

			PreparedStatement ps =
			con.prepareStatement(

			"INSERT INTO cart(user_id,product_id) VALUES(?,?)"

			);

			ps.setInt(1,user.getId());

			ps.setInt(2,productId);

			ps.executeUpdate();

			response.sendRedirect(
			"userCart.jsp");

		}
		catch(Exception e){

			e.printStackTrace();
		}
	}
}