package com.flightticketbookingSystem.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.flightticketbookingSystem.models.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {
    @Query("SELECT f FROM Flight f WHERE f.source LIKE %:query% OR f.destination LIKE %:query%")
    List<Flight> searchByQuery(@Param("query") String query);
}
