package repository.impl;

import model.ContractDetail;
import repository.BaseRepository;
import repository.ContractDetailRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContractDetailRepositoryImpl implements ContractDetailRepository {
    private static final String INSERT_CONTRACT_DETAIL_SQL = "insert into contract_detail (contract_detail_id, contract_id, attach_facility_id, quantity) values (?, ?, ?, ?);";
    private static final String SELECT_ALL_CONTRACT_DETAIL = "select * from contract_detail";
    private static final String SELECT_ALL_ATTACH_FACILITY_CONTRACT = "select attach_facility.* from attach_facility\n" +
            "join contract_detail on attach_facility.attach_facility_id = contract_detail.attach_facility_id\n" +
            "join contract on contract_detail.contract_id = contract.contract_id\n" +
            "where contract.contract_id = ?;";

    @Override
    public List<ContractDetail> selectAllContractDetail() {
        List<ContractDetail> contractDetailList = new ArrayList<>();

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CONTRACT_DETAIL)) {

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = Integer.parseInt(rs.getString("contract_detail_id"));
                int contractId = Integer.parseInt(rs.getString("contract_id"));
                int attachFacilityId = Integer.parseInt(rs.getString("attach_facility_id"));
                int quantity = Integer.parseInt(rs.getString("quantity"));

                contractDetailList.add(new ContractDetail(id, contractId, attachFacilityId, quantity));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return contractDetailList;
    }

    @Override
    public List<ContractDetail> selectAllAttachFacilityContract(int id) {
        List<ContractDetail> contractAttachFacilityDetailList = new ArrayList<>();

        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ATTACH_FACILITY_CONTRACT)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int contractId = Integer.parseInt(rs.getString("contract_id"));
                int attachFacilityId = Integer.parseInt(rs.getString("attach_facility_id"));
                int quantity = Integer.parseInt(rs.getString("quantity"));

                contractAttachFacilityDetailList.add(new ContractDetail(id, contractId, attachFacilityId, quantity));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }

        return contractAttachFacilityDetailList;
    }

    @Override
    public void insertContractDetail(ContractDetail contractDetail) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CONTRACT_DETAIL_SQL)) {

            preparedStatement.setInt(1, contractDetail.getId());
            preparedStatement.setInt(2, contractDetail.getContractId());
            preparedStatement.setInt(3, contractDetail.getAttachFacilityId());
            preparedStatement.setInt(4, contractDetail.getQuantity());


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
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
