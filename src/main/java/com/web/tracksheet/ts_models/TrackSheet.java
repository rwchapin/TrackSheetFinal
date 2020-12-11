package com.web.tracksheet.ts_models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.web.tracksheet.user_model.User;

@Entity
@Table(name="tracksheet")
public class TrackSheet {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String date;
	
	private String tsName;
	
	private String location;
	
	private String eventName;
	
	private String talentName;
	
	private String notes;
	
	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="user_id")
	private User user;
	
	@OneToMany(mappedBy="trackSheet", cascade=CascadeType.ALL)
	private List<Inputs> inputs;
	
	@OneToMany(mappedBy="trackSheet", cascade=CascadeType.ALL)
	private List<MonOutputs> monOutputs;

	@OneToMany(mappedBy="trackSheet", cascade=CascadeType.ALL)
	private List<FohOutputs> fohOutputs;
	
	@OneToMany(mappedBy="trackSheet", cascade=CascadeType.ALL)
	private List<WirelessInputs> wirelessInputs;
	
	@OneToMany(mappedBy="trackSheet", cascade=CascadeType.ALL)
	private List<WirelessOutputs> wirelessOutputs;
	

	
	

	public TrackSheet() {
		super();
	}

	public TrackSheet(Long id, String date, String tsName, String location, String eventName, String talentName,
			String notes, User user, List<Inputs> inputs, List<MonOutputs> monOutputs, List<FohOutputs> fohOutputs,
			List<WirelessInputs> wirelessInputs, List<WirelessOutputs> wirelessOutputs) {
		super();
		this.id = id;
		this.date = date;
		this.tsName = tsName;
		this.location = location;
		this.eventName = eventName;
		this.talentName = talentName;
		this.notes = notes;
		this.user = user;
		this.inputs = inputs;
		this.monOutputs = monOutputs;
		this.fohOutputs = fohOutputs;
		this.wirelessInputs = wirelessInputs;
		this.wirelessOutputs = wirelessOutputs;
	}







	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}

	public String getTsName() {
		return tsName;
	}

	public void setTsName(String tsName) {
		this.tsName = tsName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getTalentName() {
		return talentName;
	}

	public void setTalentName(String talentName) {
		this.talentName = talentName;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}


	public List<Inputs> getInputs() {
		return inputs;
	}


	public void setInputs(List<Inputs> inputs) {
		this.inputs = inputs;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	public List<MonOutputs> getMonOutputs() {
		return monOutputs;
	}

	public void setMonOutputs(List<MonOutputs> monOutputs) {
		this.monOutputs = monOutputs;
	}
	
	public List<FohOutputs> getFohOutputs() {
		return fohOutputs;
	}

	public void setFohOutputs(List<FohOutputs> fohOutputs) {
		this.fohOutputs = fohOutputs;
	}

	
	public List<WirelessInputs> getWirelessInputs() {
		return wirelessInputs;
	}

	public void setWirelessInputs(List<WirelessInputs> wirelessInputs) {
		this.wirelessInputs = wirelessInputs;
	}

	public List<WirelessOutputs> getWirelessOutputs() {
		return wirelessOutputs;
	}

	public void setWirelessOutputs(List<WirelessOutputs> wirelessOutputs) {
		this.wirelessOutputs = wirelessOutputs;
	}

	
	@Override
	public String toString() {
		return "TrackSheet [id=" + id +  ", date=" + date + ", tsName=" + tsName + ", location="
				+ location + ", eventName=" + eventName + ", talentName=" + talentName + ", notes=" + notes
				+ "]";
	}
	
	
	
	
	
	
	

}
