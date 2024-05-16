package com.eBookManagementSytem.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "booking")
public class details {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false, unique = true)
    private String fname;
    
    @Column(nullable = false, unique = true)
    private String lname;
    
    @Column(nullable = false)
    private Long umobile;
    
    @Column(nullable = false, unique = true)
    private String email;
    
    @Column(nullable = false, unique = true)
    private String dob;
    
    @Column(nullable = false, unique = true)
    private String age;

    @Column(nullable = false)
    private String source;

    @Column(nullable = false)
    private String destination;
    
    @Column(nullable = false)
    private String tdate;
    
    @Column(nullable = false)
    private String weight;
    
    @Column(nullable = false)
    private String extraphone;
    
    @Column(nullable = false)
    private String aadhar;
    
    @Column(nullable = false)
    private String address;
    
    @Column(nullable = false)
    private String pay;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public Long getUmobile() {
		return umobile;
	}

	public void setUmobile(Long umobile) {
		this.umobile = umobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
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

	public String getTdate() {
		return tdate;
	}

	public void setTdate(String tdate) {
		this.tdate = tdate;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getExtraphone() {
		return extraphone;
	}

	public void setExtraphone(String extraphone) {
		this.extraphone = extraphone;
	}

	public String getAadhar() {
		return aadhar;
	}

	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}
}


//package com.eBookManagementSytem.models;
//
//
//@Data
//@Entity
//@Table(name = "Mobiles")
//public class Mobiles {
//	 @Id
//	 @GeneratedValue(strategy = GenerationType.IDENTITY)
//	 private Long id;
//	 
//	 @Column(name="ProductName")
//	 private String prodname;
//	 
//	 @Column(name="ModelName")
//	 private String modelname;
//	 
//	 @Column(name="ProductPrice")
//	 private Double prodprice;
//	 
//	 @Column(name="ProductQuantity")
//	 private String prodquant;
//	 
//	 @Column(name="ProductDescription")
//	 private String proddesc;
//	 
//	 @Column(name="prodimg")
//	 private String prodimg;
//}
//
