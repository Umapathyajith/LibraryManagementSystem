package com.lib.dto;


public class Userlogindetails {
	
	private String username;
	private String email;
	

	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String toString() {
		return "ValidateLibraian [ lusername=" + username + ", lemail=" + email + "]";
	}
	

}

