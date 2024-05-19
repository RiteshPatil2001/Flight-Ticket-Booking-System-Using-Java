package com.flightticketbookingSystem.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flightticketbookingSystem.models.booking;
import com.flightticketbookingSystem.repos.bookingRepository;

import jakarta.transaction.Transactional;


@Service
@Transactional
public class BookingService {

    @Autowired
    private bookingRepository bookRepository;

    public booking findByAadhar(String aadhar) {
        return bookRepository.findByAadhar(aadhar);
    }

    public String addBooking(booking book) {
        bookRepository.save(book);
        return "okkk";
    }
}
