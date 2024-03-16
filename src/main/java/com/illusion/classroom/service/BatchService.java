package com.illusion.classroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.illusion.classroom.dao.BatchDao;
import com.illusion.classroom.dto.AddedBatchDetails;
import com.illusion.classroom.dto.Batch;

@Service
public class BatchService {
	
	@Autowired
	BatchDao batchDao;
	
	public Batch saveBatch(Batch b) {
		return batchDao.saveBatch(b);
	}
	public List<Batch> getAllBatch() {
		return batchDao.getAllBatch();
	}
	
	public AddedBatchDetails getBatch(String batch) {
		return batchDao.getById(batch);
	}

}
