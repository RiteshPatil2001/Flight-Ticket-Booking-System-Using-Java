package com.flightticketbookingSystem.repos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flightticketbookingSystem.models.admin;

@Repository
public interface adminRepository extends JpaRepository<admin, Integer> {

	admin findByusername(String username);


}