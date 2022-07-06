package service;

import model.ContractDetail;

import java.sql.SQLException;
import java.util.List;

public interface ContractDetailService {
    List<ContractDetail> selectAllContractDetail();

    List<ContractDetail> selectAllAttachFacilityContract(int id);

    void insertContractDetail(ContractDetail contractDetail) throws SQLException;
}
