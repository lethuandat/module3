package service;

import model.Users;
import repository.IUserRepository;
import repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService{
    private IUserRepository userRepository = new UserRepository();

    @Override
    public void insertUser(Users user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public Users selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<Users> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public List<Users> findByCountry(String country) {
        return userRepository.findByCountry(country);
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(Users user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public List<Users> sortByName() throws SQLException {
        return userRepository.sortByName();
    }
}
