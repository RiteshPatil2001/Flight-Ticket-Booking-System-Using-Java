package com.eBookManagementSytem.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eBookManagementSytem.models.details;

public interface DetailsRepo extends JpaRepository <details, Long> {
		    details findByemail(String model_nm);
		}

