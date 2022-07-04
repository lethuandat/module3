package repository;

import model.Contract;

import java.sql.SQLException;
import java.util.List;

public interface ContractRepository {
    List<Contract> selectAll();

    List<Contract> selectAllContract();

    Contract selectContract(int id);

    void insertContract(Contract contract) throws SQLException;

    boolean updateContract(Contract contract) throws SQLException;

    boolean deleteContract(int id) throws SQLException;
}
