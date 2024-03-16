package com.illusion.classroom.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.illusion.classroom.dto.Batch;

public interface BatchRepository extends MongoRepository<Batch, String> {

}
