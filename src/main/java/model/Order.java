//package model;
//
//public class Order {
//
//    private int id;
//    private String customerName;
//    private String mobile;
//    private String address;
//    private double totalAmount;
//
//    public Order() {
//    }
//
//    public Order(String customerName,
//            String mobile,
//            String address,
//            double totalAmount) {
//
//        this.customerName = customerName;
//        this.mobile = mobile;
//        this.address = address;
//        this.totalAmount = totalAmount;
//    }
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public String getCustomerName() {
//        return customerName;
//    }
//
//    public void setCustomerName(String customerName) {
//        this.customerName = customerName;
//    }
//
//    public String getMobile() {
//        return mobile;
//    }
//
//    public void setMobile(String mobile) {
//        this.mobile = mobile;
//    }
//
//    public String getAddress() {
//        return address;
//    }
//
//    public void setAddress(String address) {
//        this.address = address;
//    }
//
//    public double getTotalAmount() {
//        return totalAmount;
//    }
//
//    public void setTotalAmount(double totalAmount) {
//        this.totalAmount = totalAmount;
//    }
//}

package model;

public class Order {

    private int id;
    private String customerName;
    private String mobile;
    private String address;
    private double totalAmount;

    public Order() {
    }

    public Order(String customerName,
            String mobile,
            String address,
            double totalAmount) {

        this.customerName = customerName;
        this.mobile = mobile;
        this.address = address;
        this.totalAmount = totalAmount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }
}