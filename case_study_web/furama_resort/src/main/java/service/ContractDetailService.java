package service;

import model.ContractDetail;

import java.util.List;

public interface ContractDetailService {
    List<ContractDetail> selectAllContractDetail();

    List<ContractDetail> selectAllAttachFacilityContract(int id);
}
