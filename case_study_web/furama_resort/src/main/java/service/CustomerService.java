package service;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerService {
    List<Customer> selectAll();

    List<Customer> selectAllCustomer();

    Customer selectCustomer(int id);

    void insertCustomer(Customer customer) throws SQLException;

    boolean updateCustomer(Customer customer) throws SQLException;

    boolean deleteCustomer(int id) throws SQLException;

    List<Customer> search(String keySearch);
}
