package com.eBookManagementSytem.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eBookManagementSytem.models.Users;


@Repository
public interface UserRepository extends JpaRepository<Users, Integer> {
    Users findByusername(String username);


}
