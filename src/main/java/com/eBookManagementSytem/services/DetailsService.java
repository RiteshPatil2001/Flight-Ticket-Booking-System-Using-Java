package com.eBookManagementSytem.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eBookManagementSytem.models.details;
import com.eBookManagementSytem.repos.DetailsRepo;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class DetailsService {

    @Autowired
    private DetailsRepo detailsRepo;
    public List<details> getdetails() {
        List<details> detail = detailsRepo.findAll();
    	return detail;
    }
    
}
