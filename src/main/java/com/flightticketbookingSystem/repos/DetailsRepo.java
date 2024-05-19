package com.flightticketbookingSystem.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flightticketbookingSystem.models.details;

public interface DetailsRepo extends JpaRepository <details, Long> {
		    details findByemail(String model_nm);
		}

