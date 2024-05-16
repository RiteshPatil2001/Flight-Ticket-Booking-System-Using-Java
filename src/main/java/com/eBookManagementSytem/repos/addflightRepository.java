package com.eBookManagementSytem.repos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eBookManagementSytem.models.Addflight;


@Repository
public interface addflightRepository extends JpaRepository<Addflight, Integer> {
    Addflight findBysource(String source);


}
