package com.eBookManagementSytem.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Flight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String airline;
    private String bprice;
    private String date;
    private String destination;
    private String eprice; 
    private String flightid;
    private String fprice;
    private String source;
    private String timetoreach;
    private String sourcetime;
    private String destinationtime;
    
    public Flight(){}
    
	public Flight(int id, String airline, String bprice, String date, String destination, String eprice,
			String flightid, String fprice, String source, String timetoreach, String sourcetime, String destinationtime) {
		super();
		this.id = id;
		this.airline = airline;
		this.bprice = bprice;
		this.date = date;
		this.destination = destination;
		this.eprice = eprice;
		this.flightid = flightid;
		this.fprice = fprice;
		this.source = source;
		this.timetoreach = timetoreach;
		this.sourcetime = sourcetime;
		this.destinationtime = destinationtime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getBprice() {
		return bprice;
	}

	public void setBprice(String bprice) {
		this.bprice = bprice;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getEprice() {
		return eprice;
	}

	public void setEprice(String eprice) {
		this.eprice = eprice;
	}

	public String getFlightid() {
		return flightid;
	}

	public void setFlightid(String flightid) {
		this.flightid = flightid;
	}

	public String getFprice() {
		return fprice;
	}

	public void setFprice(String fprice) {
		this.fprice = fprice;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getTimetoreach() {
		return timetoreach;
	}

	public void setTimetoreach(String timetoreach) {
		this.timetoreach = timetoreach;
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

