package dao;

import model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(Users user) throws SQLException;

    public Users selectUser(int id);

    public List<Users> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(Users user) throws SQLException;
}
