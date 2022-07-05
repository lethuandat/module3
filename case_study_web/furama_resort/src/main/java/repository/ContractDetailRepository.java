package repository;

import model.ContractDetail;

import java.util.List;

public interface ContractDetailRepository {
    List<ContractDetail> selectAllContractDetail();

    List<ContractDetail> selectAllAttachFacilityContract(int id);
}
