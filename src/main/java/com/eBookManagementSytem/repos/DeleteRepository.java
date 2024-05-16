package com.eBookManagementSytem.repos;

import com.eBookManagementSytem.models.AllUsers;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeleteRepository extends JpaRepository<AllUsers, Long> {
    // Additional custom query methods can be defined here if needed
}

