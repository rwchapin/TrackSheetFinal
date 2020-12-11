package com.web.tracksheet.user_model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.web.tracksheet.ts_models.TrackSheet;


@Entity
@Table(name="accounts")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String fName;
	
	private String lName;
	
	private String email;
	
	private String password;
	
	@Transient
	private String password2;
	
	private String role;
	
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL)
	private List<TrackSheet> tracksheets;
	
	
	
	public User() {
		super();
	}
	
	public User(Long id, String fName, String lName, String email, String password, String password2, String role) {
		super();
		this.id = id;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.password = password;
		this.password2 = password2;
		this.role = role;
	}
	
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	

	public List<TrackSheet> getTracksheets() {
		return tracksheets;
	}

	public void setTracksheets(List<TrackSheet> tracksheets) {
		this.tracksheets = tracksheets;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", fName=" + fName + ", lName=" + lName + ", email=" + email + ", password="
				+ password + ", password2=" + password2 + ", role=" + role + "]";
	}
	
	

	
	
	
	
	
	
	

}
