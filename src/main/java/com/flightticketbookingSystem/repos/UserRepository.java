package com.flightticketbookingSystem.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flightticketbookingSystem.models.Users;


@Repository
public interface UserRepository extends JpaRepository<Users, Integer> {
    Users findByusername(String username);


}
