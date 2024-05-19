package com.flightticketbookingSystem.models;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class AllUsers {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String uname;
    private String uemail;
    private String upwd;
    private Long umobile;
    
    public AllUsers() {}
    
	public AllUsers(Long id, String uname, String uemail, String upwd, Long umobile) {
		super();
		this.id = id;
		this.uname = uname;
		this.uemail = uemail;
		this.upwd = upwd;
		this.umobile = umobile;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public Long getUmobile() {
		return umobile;
	}

	public void setUmobile(Long umobile) {
		this.umobile = umobile;
	}
	
	

    
    
}

