package com.eBookManagementSytem.services;



import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eBookManagementSytem.models.Addflight;
import com.eBookManagementSytem.models.Users;
import com.eBookManagementSytem.models.admin;
import com.eBookManagementSytem.repos.UserRepository;
import com.eBookManagementSytem.repos.adminRepository;
import com.eBookManagementSytem.repos.addflightRepository;


import jakarta.transaction.Transactional;

@Service
@Transactional
public class UserService  {
	
	
    @Autowired
    private UserRepository userRepository;

    public Users registerUser(Users user) {
        return userRepository.save(user);
    }

    public List<Users> getUsers() {
        List<Users> users = userRepository.findAll();
    	return users;
    }
    
    public Users findUserByUsername(String username) {
        return userRepository.findByusername(username);
    }
    public boolean loginUser(String username, String password) {
        Users user = userRepository.findByusername(username);
        if (user != null && user.getUpwd().equals(password)) {
            return true;
        }
        return false;
    }


    @Autowired
    private adminRepository adminRepository;
    
    public admin findUserByusername(String username) {
        return adminRepository.findByusername(username);
    }
    public boolean loginAdmin(String username, String password) {
        admin admin = adminRepository.findByusername(username);

        // Check if the user exists and the password matches
        if (admin != null && admin.getPassword().equals(password)) {
                return true;
  
        }
        return false;
    }
    
    
    
    @Autowired
    private addflightRepository addflightRepository;

    public Addflight addflight(Addflight add) {
        return addflightRepository.save(add);
    }

}

