package com.eBookManagementSytem.repos;



import com.eBookManagementSytem.models.Flight;
import com.eBookManagementSytem.services.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class FlightServiceImpl implements FlightService {
    @Autowired
    private FlightRepository flightRepository;

    @Override
    public void addFlight(Flight flight) {
        flightRepository.save(flight);
    }

    @Override
    public List<Flight> getAllFlights() {
        return flightRepository.findAll();
    }

    @Override
    public Flight getFlightById(Long id) {
        return flightRepository.findById(id).orElse(null);
    }
    
    @Override
    public List<Flight> searchFlights(String query) {
        return flightRepository.searchByQuery(query);
    }

}

