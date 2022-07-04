package service.impl;

import model.Facility;
import model.House;
import model.Room;
import model.Villa;
import repository.FacilityRepository;
import repository.impl.FacilityRepositoryImpl;
import service.FacilityService;

import java.sql.SQLException;
import java.util.List;

public class FacilityServiceImpl implements FacilityService {
    private final FacilityRepository facilityRepository = new FacilityRepositoryImpl();

    @Override
    public List<Facility> selectAll() {
        return facilityRepository.selectAll();
    }

    @Override
    public List<Facility> selectAllFacility() {
        return facilityRepository.selectAllFacility();
    }

    @Override
    public Facility selectFacility(int id) {
        return facilityRepository.selectFacility(id);
    }

    @Override
    public void insertVilla(Villa villa) throws SQLException {
        facilityRepository.insertVilla(villa);
    }

    @Override
    public void insertHouse(House house) throws SQLException {
        facilityRepository.insertHouse(house);
    }

    @Override
    public void insertRoom(Room room) throws SQLException {
        facilityRepository.insertRoom(room);
    }

    @Override
    public boolean updateVilla(Villa villa) throws SQLException {
        return facilityRepository.updateVilla(villa);
    }

    @Override
    public boolean updateHouse(House house) throws SQLException {
        return facilityRepository.updateHouse(house);
    }

    @Override
    public boolean updateRoom(Room room) throws SQLException {
        return facilityRepository.updateRoom(room);
    }

    @Override
    public boolean deleteFacility(int id) throws SQLException {
        return facilityRepository.deleteFacility(id);
    }
}
