package com.illusion.classroom.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.illusion.classroom.dto.AddedBatchDetails;

public interface AddedBatchDetailsRepository  extends MongoRepository<AddedBatchDetails, String>{

}
