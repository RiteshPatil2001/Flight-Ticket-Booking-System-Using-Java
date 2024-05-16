package com.eBookManagementSytem.services;

import com.eBookManagementSytem.models.Flight;

import java.util.List;

public interface FlightService {
    void addFlight(Flight flight);
    List<Flight> getAllFlights();
    Flight getFlightById(Long id);
    List<Flight> searchFlights(String query);

}

