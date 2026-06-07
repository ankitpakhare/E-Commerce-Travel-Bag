package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DBConnection;
import model.Admin;
import model.Cart;
import model.Product;
import model.User;
import java.util.ArrayList;
import java.util.List;
import model.Order;

public class UserDAO {

    Connection con;

    public UserDAO() {
        con = DBConnection.getConnection();
    }

//    admin register 
    
    public boolean registerAdmin(Admin admin){

        boolean status = false;

        try{

            String sql =
            "INSERT INTO admin(name,email,password) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1,
                    admin.getName());

            ps.setString(2,
                    admin.getEmail());

            ps.setString(3,
                    admin.getPassword());

            int row = ps.executeUpdate();

            if(row > 0){

                status = true;
            }

        } catch(Exception e){

            e.printStackTrace();
        }

        return status;
    }
    
//   ==================== Admin Login ===================
    public Admin loginAdmin(
            String email,
            String password){

        Admin admin = null;

        try{

            String sql =
            "SELECT * FROM admin WHERE email=? AND password=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, email);

            ps.setString(2, password);

            ResultSet rs =
                    ps.executeQuery();

            if(rs.next()){

                admin = new Admin();

                admin.setId(rs.getInt("id"));

                admin.setName(
                        rs.getString("name"));

                admin.setEmail(
                        rs.getString("email"));
            }

        } catch(Exception e){

            e.printStackTrace();
        }

        return admin;
    }
    
// ====================== REGISTER METHOD ===============
    public boolean registerUser(User user) {

        boolean status = false;

        try {

            String sql = "INSERT INTO users(name,email,password) VALUES(?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());

            int row = ps.executeUpdate();

            if(row > 0) {
                status = true;
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    
    // LOGIN METHOD
    public User loginUser(String email, String password) {

        User user = null;

        try {

            String sql = "SELECT * FROM users WHERE email=? AND password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    
    //Add Product
    
    public boolean addProduct(Product product) {

        boolean status = false;

        try {

            String sql = "INSERT INTO products(name,category,price,image) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, product.getName());
            ps.setString(2, product.getCategory());
            ps.setDouble(3, product.getPrice());
            ps.setString(4, product.getImage());

            int row = ps.executeUpdate();

            if(row > 0) {
                status = true;
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    
//   View Products 
    public List<Product> getAllProducts() {

        List<Product> list = new ArrayList<Product>();

        try {

            String sql = "SELECT * FROM products";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                Product p = new Product();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setCategory(rs.getString("category"));
                p.setPrice(rs.getDouble("price"));
                p.setImage(rs.getString("image"));

                list.add(p);
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    // Add To Cart
    
    public Product getProductById(int id) {

        Product p = null;

        try {

            String sql = "SELECT * FROM products WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                p = new Product();

                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return p;
    }
    
//  Add Cart Insert  
    public boolean addToCart(Product p) {

        boolean status = false;

        try {

            String sql =
            "INSERT INTO cart(product_id,product_name,price,quantity) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, p.getId());
            ps.setString(2, p.getName());
            ps.setDouble(3, p.getPrice());
            ps.setInt(4, 1);

            int row = ps.executeUpdate();

            if(row > 0) {
                status = true;
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return status;
    }
    
    // CartProducts
    public List<Cart> getCartProducts() {

        List<Cart> list = new ArrayList<Cart>();

        try {

            String sql = "SELECT * FROM cart";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                Cart c = new Cart();

                c.setId(rs.getInt("id"));
                c.setProductId(rs.getInt("product_id"));
                c.setProductName(rs.getString("product_name"));
                c.setPrice(rs.getDouble("price"));
                c.setQuantity(rs.getInt("quantity"));

                list.add(c);
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    // place order
    
    public boolean placeOrder(Order order) {

        boolean status = false;

        try {

            String sql =
            "INSERT INTO orders(customer_name,mobile,address,total_amount) VALUES(?,?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1,
                    order.getCustomerName());

            ps.setString(2,
                    order.getMobile());

            ps.setString(3,
                    order.getAddress());

            ps.setDouble(4,
                    order.getTotalAmount());

            int row = ps.executeUpdate();

            if(row > 0){

                status = true;
            }

        } catch(Exception e){

            e.printStackTrace();
        }

        return status;
    }    
    
//    Remove cart
    public boolean removeCartItem(int id){

        boolean status = false;

        try{

            String sql =
            "DELETE FROM cart WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, id);

            int row = ps.executeUpdate();

            if(row > 0){

                status = true;
            }

        } catch(Exception e){

            e.printStackTrace();
        }

        return status;
    }
    
//    delete product
    
    public boolean deleteProduct(int id){

        boolean status = false;

        try{

            String sql =
            "DELETE FROM products WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, id);

            int row = ps.executeUpdate();

            if(row > 0){

                status = true;
            }

        } catch(Exception e){

            e.printStackTrace();
        }

        return status;
    }
    
//    ========================== get all order ==============
    
    public List<Order> getAllOrders(){

        List<Order> list =
                new ArrayList<Order>();

        try{

            String sql =
            "SELECT * FROM orders";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()){

                Order o = new Order();

                o.setId(rs.getInt("id"));

                o.setCustomerName(
                        rs.getString("customer_name"));

                o.setMobile(
                        rs.getString("mobile"));

                o.setAddress(
                        rs.getString("address"));

                o.setTotalAmount(
                        rs.getDouble("total_amount"));

                list.add(o);
            }

        } catch(Exception e){

            e.printStackTrace();
        }

        return list;
    }
    
//    =================== user click the bag then show more information
    public List<Cart> getUserCartProducts(int userId){

    	List<Cart> list =
    	new ArrayList<Cart>();

    	try{

    		Connection con =
    		DBConnection.getConnection();

    		PreparedStatement ps =
    		con.prepareStatement(

    		"SELECT c.id,p.id AS pid,p.name,p.price,p.image,c.quantity " +

    		"FROM cart c " +

    		"INNER JOIN products p " +

    		"ON c.product_id=p.id " +

    		"WHERE c.user_id=?"

    		);

    		ps.setInt(1,userId);

    		ResultSet rs =
    		ps.executeQuery();

    		while(rs.next()){

    			Cart c = new Cart();

    			c.setId(
    			rs.getInt("id"));

    			c.setProductId(
    			rs.getInt("pid"));

    			c.setProductName(
    			rs.getString("name"));

    			c.setPrice(
    			rs.getDouble("price"));


    			c.setQuantity(
    			rs.getInt("quantity"));

    			list.add(c);
    		}

    	}catch(Exception e){

    		e.printStackTrace();
    	}

    	return list;
    }
    
}