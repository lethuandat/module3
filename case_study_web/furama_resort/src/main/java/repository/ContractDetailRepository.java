package repository;

import model.ContractDetail;

import java.sql.SQLException;
import java.util.List;

public interface ContractDetailRepository {
    List<ContractDetail> selectAllContractDetail();

    List<ContractDetail> selectAllAttachFacilityContract(int id);

    void insertContractDetail(ContractDetail contractDetail) throws SQLException;
}
