package com.flightticketbookingSystem.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flightticketbookingSystem.models.Users;
import com.flightticketbookingSystem.models.booking;

@Repository
public interface bookingRepository extends JpaRepository<booking, Integer> {
    booking findByAadhar(String aadhar);
}

