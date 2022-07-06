package service.impl;

import common.Validate;
import model.Customer;
import repository.CustomerRepository;
import repository.impl.CustomerRepositoryImpl;
import service.CustomerService;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private final CustomerRepository customerRepository = new CustomerRepositoryImpl();

    @Override
    public List<Customer> selectAll() {
        return customerRepository.selectAll();
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return customerRepository.selectAllCustomer();
    }

    @Override
    public Customer selectCustomer(int id) {
        return customerRepository.selectCustomer(id);
    }


    @Override
    public Map<String, String> insertCustomer(Customer customer) throws SQLException {
        Map<String, String> error = new HashMap<>();

        if (customer.getName().equals("")) {
            error.put("name", "Tên không được để trống");
        } else if (!customer.getName().matches(Validate.CUSTOMER_NAME)) {
            error.put("name", "Tên khách hàng không hợp lệ");
        }

        if (error.isEmpty()) {
            customerRepository.insertCustomer(customer);
        }

        return error;
    }


    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return customerRepository.updateCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public List<Customer> search(String keySearch) {
        return customerRepository.search(keySearch);
    }
}
