package com.eBookManagementSytem.repos;


import com.eBookManagementSytem.models.AllUsers;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AllUsersRepository extends JpaRepository<AllUsers, Long> {
}
