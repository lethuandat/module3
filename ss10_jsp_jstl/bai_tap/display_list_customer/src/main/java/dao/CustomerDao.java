package dao;

import javafx.print.Collation;
import model.Customer;

import java.util.*;

public class CustomerDao {
    private static final Map<Integer, Customer> listCustomer = new HashMap<Integer, Customer>();

    static {
        initCustomer();
    }

    private static void initCustomer() {
        Customer customer1 = new Customer(1, "Mai Văn Hoàn", "20/08/1983", "Hà Nội");
        Customer customer2 = new Customer(2, "Nguyễn Văn Nam", "21/08/1983", "Bắc Giang");
        Customer customer3 = new Customer(3, "Nguyễn Thái Hòa", "22/08/1983", "Nam Định");
        Customer customer4 = new Customer(4, "Trần Đăng Khoa", "17/08/1983", "Hà Tây");
        Customer customer5 = new Customer(5, "Nguyễn Đình Thi", "19/08/1983", "Hà Nội");

        listCustomer.put(customer1.getId(), customer1);
        listCustomer.put(customer2.getId(), customer2);
        listCustomer.put(customer3.getId(), customer3);
        listCustomer.put(customer4.getId(), customer4);
        listCustomer.put(customer5.getId(), customer5);
    }

    //Phương thức get xử lý thông tin 1 customer theo id
    public static Customer getCustomer(int customerId) {
        return listCustomer.get(customerId);
    }

    //Phương thức lấy danh sách tất cả customer
    public static List<Customer> getAllCustomer() {
        Collection<Customer> c = listCustomer.values();
        List<Customer> customerList = new ArrayList<Customer>();
        customerList.addAll(c);
        return customerList;
    }
}
