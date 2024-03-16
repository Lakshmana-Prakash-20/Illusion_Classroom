package com.illusion.classroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.illusion.classroom.dao.AddedBatchDetailsDao;
import com.illusion.classroom.dto.AddedBatchDetails;

@Service
public class AddBatchDetailsSevice {
	
	@Autowired
	AddedBatchDetailsDao addedBatchDetailsDao;
	
	public void saveBatch(AddedBatchDetails batch) {
		addedBatchDetailsDao.saveBatch(batch);
	}
	
	public List<AddedBatchDetails> fetchAllBatch() {
		return addedBatchDetailsDao.fetchAllBatch();
	}

}
