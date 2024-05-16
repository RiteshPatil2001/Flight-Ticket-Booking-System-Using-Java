package com.eBookManagementSytem.controller;


import java.time.LocalDate;

import java.util.*;
import com.razorpay.*;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.eBookManagementSytem.models.booking;
import com.eBookManagementSytem.services.BookingService;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;

import ch.qos.logback.core.model.Model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class bookingController {
    @Autowired
    private BookingService bookingService;

    @PostMapping("/booking")
    public String saveBooking(@ModelAttribute("booking") booking booking,
                              RedirectAttributes redirectAttributes) {
        // Save the booking data into the database using the booking service
        bookingService.addBooking(booking);

        // Add a success message to be displayed on the redirected page
        redirectAttributes.addFlashAttribute("status", "success");
        redirectAttributes.addFlashAttribute("message", "Account created successfully! Please Login to your Account to continue.");

        // Redirect to a success page or any other page you prefer
        return "redirect:/ticketdetails";
    } 
    
    @GetMapping("/ticketdetails")
    public String ticketdetails() {
        return "ticketdetails"; // This should match the name of the JSP file without the extension
    }

}

