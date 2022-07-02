package repository.impl;

import model.Facility;
import repository.BaseRepository;
import repository.FacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepositoryImpl implements FacilityRepository {
    private static final String INSERT_FACILITY_SQL = "insert into users (name, email, country_id) values (?, ?, ?);";
    private static final String SELECT_FACILITY_BY_ID = "select * from facility where facility_id = ?;";
    private static final String SELECT_ALL_FACILITY = "select * from facility";
    private static final String UPDATE_FACILITY_SQL = "update facility set name = ?,email= ?, country_id =? where id = ?;";
    private static final String DELETE_FACILITY_SQL = "delete from facility where facility_id = ?;";

    @Override
    public List<Facility> selectAllFacility() {
        List<Facility> users = new ArrayList<>();

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                int countryId = rs.getInt("country_id");
                users.add(new User(id, name, email, countryId));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    @Override
    public Facility selectFacility(int id) {
        Facility facility = null;

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                int countryId = rs.getInt("country_id");
                user = new User(id, name, email, countryId);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return facility;
    }

    @Override
    public void insertFacility(Facility facility) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setInt(3, user.getCountryId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public boolean updateFacility(Facility facility) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setInt(3, user.getCountryId());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public boolean deleteFacility(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_FACILITY_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
