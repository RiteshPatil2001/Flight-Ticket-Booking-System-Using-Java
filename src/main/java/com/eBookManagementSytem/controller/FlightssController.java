package com.eBookManagementSytem.controller;

import java.util.List;


import com.eBookManagementSytem.services.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.eBookManagementSytem.models.Flight;
import com.eBookManagementSytem.models.booking;
import com.eBookManagementSytem.models.details;
import com.eBookManagementSytem.services.DetailsService;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class FlightssController {
	
	@Autowired
	private DetailsService detail;
	@Autowired
	private FlightService flightService;


	@GetMapping("/flights")
	    public String getAllDetails(Model model) {
		 model.addAttribute("flights", flightService.getAllFlights());
	          return "flights";

	    }
	
	@GetMapping("/search")
    public String searchFlights(@RequestParam("query") String query, Model model) {
        List<Flight> searchResults = flightService.searchFlights(query);
        model.addAttribute("flights", searchResults);
        return "flights";
    }
//		@PostMapping("/flights")
//		public String saveBooking(@ModelAttribute("flights") booking bk ) {
//			// Save the booking data into the database using the booking service
//			detail.getdetails();
//			
//			// Add a success message to be displayed on the redirected page
////			redirectAttributes.addFlashAttribute("message", "Booking saved successfully.");
//			
//			// Redirect to a success page or any other page you prefer
//			return "redirect:/ticketdetails";
//		}
}
