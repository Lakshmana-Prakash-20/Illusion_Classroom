package com.illusion.classroom.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.illusion.classroom.dto.AddedBatchDetails;
import com.illusion.classroom.dto.Batch;
import com.illusion.classroom.repository.BatchRepository;

@Repository
public class BatchDao {
	
	@Autowired
	BatchRepository batchRepository;
	
	public Batch saveBatch(Batch b) {
		return batchRepository.save(b);
	}
	public List<Batch> getAllBatch() {
		return batchRepository.findAll();
	}
	public AddedBatchDetails getById(String batchcode) {
		 Optional<AddedBatchDetails> details=Optional.empty();
		 if(details.isPresent()) {
			 return details.get();
		 }
		 else return null;
	}
	

}
