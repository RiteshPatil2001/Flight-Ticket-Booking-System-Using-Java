package com.flightticketbookingSystem.services;

import java.util.List;

import com.flightticketbookingSystem.models.Flight;

public interface FlightService {
    void addFlight(Flight flight);
    List<Flight> getAllFlights();
    Flight getFlightById(Long id);
    List<Flight> searchFlights(String query);

}

