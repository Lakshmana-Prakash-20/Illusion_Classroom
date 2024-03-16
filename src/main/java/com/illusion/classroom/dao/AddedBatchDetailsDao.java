package com.illusion.classroom.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.illusion.classroom.dto.AddedBatchDetails;
import com.illusion.classroom.repository.AddedBatchDetailsRepository;

@Repository
public class AddedBatchDetailsDao {

	@Autowired
	AddedBatchDetailsRepository repository;
	
	public void saveBatch(AddedBatchDetails batch) {
		
		repository.save(batch);
	}
	
	public List<AddedBatchDetails> fetchAllBatch() {
		return repository.findAll();
	}
}
