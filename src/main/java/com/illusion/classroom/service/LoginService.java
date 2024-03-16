package com.illusion.classroom.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.illusion.classroom.dao.LoginDao;
import com.illusion.classroom.dto.Login;


@Service
public class LoginService {
	
	@Autowired
	LoginDao loginDao;
	
	public void SaveCredentials(Login L) {
		loginDao.saveCredentials(L);
	}
	
	public Optional<Login> getCredentials(String email)
	{
		return loginDao.getCredentials(email);
		
	}
	

}
