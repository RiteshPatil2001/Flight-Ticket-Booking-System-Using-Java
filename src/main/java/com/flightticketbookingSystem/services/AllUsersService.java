package com.flightticketbookingSystem.services;


import com.flightticketbookingSystem.models.AllUsers;
import com.flightticketbookingSystem.repos.AllUsersRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public interface AllUsersService {	
	
//    AllUsers getAllUsersById(Long id);
	void addAllUsers(AllUsers allusers);
	List<AllUsers> getAllUsers();
	AllUsers getAllUsersById(Long id);
	void updateUser(AllUsers user);
	
}



