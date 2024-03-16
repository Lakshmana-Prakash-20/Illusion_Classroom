package com.illusion.classroom.dao;

import java.net.http.HttpRequest;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.illusion.classroom.dto.Login;
import com.illusion.classroom.repository.LoginRepository;


@Repository
public class LoginDao {
	
	@Autowired
	LoginRepository loginRepository;
	
	
	
	public void saveCredentials(Login L) {
		loginRepository.save(L);
	}
	
	public Optional<Login> getCredentials(String email) {
		
		return loginRepository.findById(email);	
	}

}
