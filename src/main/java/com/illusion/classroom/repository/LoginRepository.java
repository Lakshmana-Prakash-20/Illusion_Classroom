package com.illusion.classroom.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.illusion.classroom.dto.Login;

public interface LoginRepository extends MongoRepository<Login, String> {

}
