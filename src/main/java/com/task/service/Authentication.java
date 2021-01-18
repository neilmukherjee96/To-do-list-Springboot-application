package com.task.service;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task.dao.UserDAO;
import com.task.model.User;

import lombok.Getter;
import lombok.Setter;
import lombok.val;
@Getter
@Setter
@Service
public class Authentication implements AuthenticationInterface {
	@Autowired
	UserDAO userdao;
	
	private User currentUser=null;

	@Override
	public boolean authenticate(String userName, String password) {
		val validUser=new AtomicBoolean(false);		
		userdao.findOneByNameAndPassword(userName, password).ifPresent(user->{
			setCurrentUser(user);
			validUser.set(true);});
		return validUser.get();
		
	}

	@Override
	public void logout() {
		setCurrentUser(null);
		
	}

}
