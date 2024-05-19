package com.flightticketbookingSystem.models;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "flight")
public class Addflight {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false, unique = true)
    private String flightid;
    
    @Column(nullable = false, unique = true)
    private String source;

    @Column(nullable = false)
    private String destination;
    
    @Column(nullable = false)
    private String timetoreach;
    
    @Column(nullable = false)
    private String airline;
    
    @Column(nullable = false)
    private String date;
    
    @Column(nullable = false)
    private String fprice;
    
    @Column(nullable = false)
    private String eprice;
    
    @Column(nullable = false)
    private String bprice;

    @Column(nullable = false)
    private String destinationtime;
    
    @Column(nullable = false)
    private String sourcetime;
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFlightid() {
		return flightid;
	}

	public void setFlightid(String flightid) {
		this.flightid = flightid;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getTimetoreach() {
		return timetoreach;
	}

	public void setTimetoreach(String timetoreach) {
		this.timetoreach = timetoreach;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getFprice() {
		return fprice;
	}

	public void setFprice(String fprice) {
		this.fprice = fprice;
	}

	public String getEprice() {
		return eprice;
	}

	public void setEprice(String eprice) {
		this.eprice = eprice;
	}

	public String getBprice() {
		return bprice;
	}

	public void setBprice(String bprice) {
		this.bprice = bprice;
	}
	
	
	public String getDestinationtime() {
		return destinationtime;
	}

	public void setDestinationtime(String destinationtime) {
		this.destinationtime = destinationtime;
	}

	public String getSourcetime() {
		return sourcetime;
	}

	public void setSourcetime(String sourcetime) {
		this.sourcetime = sourcetime;
	}
    
    
}
