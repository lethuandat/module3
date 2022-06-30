package service;

import model.Country;
import model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    List<User> findByCountry(String country);

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> sortByName() throws SQLException;

    List<Country> selectAllCountry();
}
