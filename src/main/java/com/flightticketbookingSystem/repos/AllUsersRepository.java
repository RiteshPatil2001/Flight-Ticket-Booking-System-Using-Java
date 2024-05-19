package com.flightticketbookingSystem.repos;


import org.springframework.data.jpa.repository.JpaRepository;

import com.flightticketbookingSystem.models.AllUsers;

public interface AllUsersRepository extends JpaRepository<AllUsers, Long> {
}
