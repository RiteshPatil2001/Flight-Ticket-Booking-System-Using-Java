package com.flightticketbookingSystem.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flightticketbookingSystem.models.AllUsers;

public interface UpdateRepository extends JpaRepository<AllUsers, Long> {
    // Additional custom query methods can be defined here if needed
}

