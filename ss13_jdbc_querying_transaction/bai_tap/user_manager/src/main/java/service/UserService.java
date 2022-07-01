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

    @Override
    public Users getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public List<Users> selectAllUsersStore() {
        return userRepository.selectAllUsersStore();
    }

    @Override
    public void insertUserStore(Users user) throws SQLException {
        userRepository.insertUserStore(user);
    }

    @Override
    public boolean deleteUserStore(int id) throws SQLException {
        return userRepository.deleteUserStore(id);
    }

    @Override
    public boolean updateUserStore(Users user) throws SQLException {
        return updateUserStore(user);
    }

    @Override
    public void addUserTransaction(Users user, int[] permision) {
        userRepository.addUserTransaction(user, permision);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        userRepository.insertUpdateWithoutTransaction();
    }

    @Override
    public void insertUpdateUseTransaction() {
        userRepository.insertUpdateUseTransaction();
    }
}
