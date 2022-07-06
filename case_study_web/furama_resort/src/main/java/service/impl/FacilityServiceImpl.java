package service.impl;

import common.Validate;
import model.Facility;
import model.House;
import model.Room;
import model.Villa;
import repository.FacilityRepository;
import repository.impl.FacilityRepositoryImpl;
import service.FacilityService;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, String> insertVilla(Villa villa) throws SQLException {
        Map<String, String> error = new HashMap<>();

        if (villa.getName().equals("")) {
            error.put("name", "Tên không được để trống");
        } else if (!villa.getName().matches(Validate.FACILITY_NAME)) {
            error.put("name", "Tên dịch vụ không hợp lệ");
        }

        if (error.isEmpty()) {
            facilityRepository.insertVilla(villa);
        }

        return error;
    }

    @Override
    public Map<String, String> insertHouse(House house) throws SQLException {
        Map<String, String> error = new HashMap<>();

        if (house.getName().equals("")) {
            error.put("name", "Tên không được để trống");
        } else if (!house.getName().matches(Validate.FACILITY_NAME)) {
            error.put("name", "Tên dịch vụ không hợp lệ");
        }

        if (error.isEmpty()) {
            facilityRepository.insertHouse(house);
        }

        return error;
    }

    @Override
    public Map<String, String> insertRoom(Room room) throws SQLException {
        Map<String, String> error = new HashMap<>();

        if (room.getName().equals("")) {
            error.put("name", "Tên không được để trống");
        } else if (!room.getName().matches(Validate.FACILITY_NAME)) {
            error.put("name", "Tên dịch vụ không hợp lệ");
        }

        if (error.isEmpty()) {
            facilityRepository.insertRoom(room);
        }

        return error;
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

    @Override
    public List<Facility> search(String keySearch) {
        return facilityRepository.search(keySearch);
    }
}
