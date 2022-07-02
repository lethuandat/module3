package repository;

import model.Facility;

import java.sql.SQLException;
import java.util.List;

public interface FacilityRepository {
    List<Facility> selectAllFacility();

    Facility selectFacility(int id);

    void insertFacility(Facility facility) throws SQLException;

    boolean updateFacility(Facility facility) throws SQLException;

    boolean deleteFacility(int id) throws SQLException;
}
