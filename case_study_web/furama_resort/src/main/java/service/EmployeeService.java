package service;

import model.Employee;

import java.sql.SQLException;
import java.util.List;

public interface EmployeeService {
    List<Employee> selectAll();

    List<Employee> selectAllEmployee();

    Employee selectEmployee(int id);

    void insertEmployee(Employee employee) throws SQLException;

    boolean updateEmployee(Employee employee) throws SQLException;

    boolean deleteEmployee(int id) throws SQLException;
}
