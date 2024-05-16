package com.eBookManagementSytem.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eBookManagementSytem.models.Users;
import com.eBookManagementSytem.models.booking;

@Repository
public interface bookingRepository extends JpaRepository<booking, Integer> {
    booking findByAadhar(String aadhar);
}

