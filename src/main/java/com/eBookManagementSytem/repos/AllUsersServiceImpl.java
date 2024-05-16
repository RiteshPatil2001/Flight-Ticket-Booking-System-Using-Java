package com.eBookManagementSytem.repos;


import com.eBookManagementSytem.models.AllUsers;
import com.eBookManagementSytem.services.AllUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class AllUsersServiceImpl implements AllUsersService {
    @Autowired
    private AllUsersRepository allusersRepository;

    @Override
    public void addAllUsers(AllUsers allusers) {
        allusersRepository.save(allusers);
    }

    @Override
    public List<AllUsers> getAllUsers() {
        return allusersRepository.findAll();
    }

    @Override
    public AllUsers getAllUsersById(Long id) {
        return allusersRepository.findById(id).orElse(null);
    }
    
    @Override
    public void updateUser(AllUsers user) {
    	allusersRepository.save(user);
    }

}
