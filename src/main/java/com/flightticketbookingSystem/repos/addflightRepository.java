package com.flightticketbookingSystem.repos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.flightticketbookingSystem.models.Addflight;


@Repository
public interface addflightRepository extends JpaRepository<Addflight, Integer> {
    Addflight findBysource(String source);


}
