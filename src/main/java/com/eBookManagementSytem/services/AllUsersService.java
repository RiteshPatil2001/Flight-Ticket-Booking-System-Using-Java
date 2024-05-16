package com.eBookManagementSytem.services;


import com.eBookManagementSytem.models.AllUsers;
import com.eBookManagementSytem.repos.AllUsersRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public interface AllUsersService {	
	
//    AllUsers getAllUsersById(Long id);
	void addAllUsers(AllUsers allusers);
	List<AllUsers> getAllUsers();
	AllUsers getAllUsersById(Long id);
	void updateUser(AllUsers user);
	
}



