package com.web.tracksheet.ts_models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class WirelessInputs {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String channelName;
	
	private String type;
	
	private String wirelessRecMake;
	
	private String wirelessRecModel;
	
	private String freq;
	
	private String wirelessTransModel;
	
	private String micCapsule;
	
	private String connType;

	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="tracksheet_id")
	private TrackSheet trackSheet;
	
	
	
	
	public WirelessInputs() {
		super();
	}

	public WirelessInputs(Long id, String channelName, String type, String wirelessRecMake, String wirelessRecModel,
			String freq, String wirelessTransModel, String micCapsule, String connType, TrackSheet trackSheet) {
		super();
		this.id = id;
		this.channelName = channelName;
		this.type = type;
		this.wirelessRecMake = wirelessRecMake;
		this.wirelessRecModel = wirelessRecModel;
		this.freq = freq;
		this.wirelessTransModel = wirelessTransModel;
		this.micCapsule = micCapsule;
		this.connType = connType;
		this.trackSheet = trackSheet;
	}


	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getWirelessRecMake() {
		return wirelessRecMake;
	}

	public void setWirelessRecMake(String wirelessRecMake) {
		this.wirelessRecMake = wirelessRecMake;
	}

	public String getWirelessRecModel() {
		return wirelessRecModel;
	}

	public void setWirelessRecModel(String wirelessRecModel) {
		this.wirelessRecModel = wirelessRecModel;
	}

	public String getFreq() {
		return freq;
	}

	public void setFreq(String freq) {
		this.freq = freq;
	}

	public String getWirelessTransModel() {
		return wirelessTransModel;
	}

	public void setWirelessTransModel(String wirelessTransModel) {
		this.wirelessTransModel = wirelessTransModel;
	}

	public String getMicCapsule() {
		return micCapsule;
	}

	public void setMicCapsule(String micCapsule) {
		this.micCapsule = micCapsule;
	}

	public String getConnType() {
		return connType;
	}

	public void setConnType(String connType) {
		this.connType = connType;
	}

	public TrackSheet getTrackSheet() {
		return trackSheet;
	}

	public void setTrackSheet(TrackSheet trackSheet) {
		this.trackSheet = trackSheet;
	}

	@Override
	public String toString() {
		return "WirelessInputs [id=" + id + ", channelName=" + channelName + ", type=" + type + ", wirelessRecMake="
				+ wirelessRecMake + ", wirelessRecModel=" + wirelessRecModel + ", freq=" + freq
				+ ", wirelessTransModel=" + wirelessTransModel + ", micCapsule=" + micCapsule + ", connType=" + connType
				+ "]";
	}
	
	
	
	

}
