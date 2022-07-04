package repository;

import model.ContractDetail;

import java.util.List;

public interface ContractDetailRepository {
    List<ContractDetail> selectAllContractDetail();
}
