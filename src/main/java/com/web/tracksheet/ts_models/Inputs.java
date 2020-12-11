package com.web.tracksheet.ts_models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity
public class Inputs {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String subsnakeNumber;
	
	private String stageboxInputNumber;
	
	private String fohInputNumber;
	
	private String monInputNumber;
	
	private String sourceName;
	
	private String inputType;
	
	private String micdiName;
	
	private String standType;
	
	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="tracksheet_id")
	private TrackSheet trackSheet;
	
	
	
	
	
	public Inputs() {
		super();
	}

	public Inputs(Long id, String subsnakeNumber, String stageboxInputNumber, String fohInputNumber,
			String monInputNumber, String sourceName, String inputType, String micdiName, String standType,
			TrackSheet trackSheet) {
		super();
		this.id = id;
		this.subsnakeNumber = subsnakeNumber;
		this.stageboxInputNumber = stageboxInputNumber;
		this.fohInputNumber = fohInputNumber;
		this.monInputNumber = monInputNumber;
		this.sourceName = sourceName;
		this.inputType = inputType;
		this.micdiName = micdiName;
		this.standType = standType;
		this.trackSheet = trackSheet;
	}



	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	

	public String getSubsnakeNumber() {
		return subsnakeNumber;
	}

	public void setSubsnakeNumber(String subsnakeNumber) {
		this.subsnakeNumber = subsnakeNumber;
	}

	public String getStageboxInputNumber() {
		return stageboxInputNumber;
	}

	public void setStageboxInputNumber(String stageboxInputNumber) {
		this.stageboxInputNumber = stageboxInputNumber;
	}

	public String getFohInputNumber() {
		return fohInputNumber;
	}

	public void setFohInputNumber(String fohInputNumber) {
		this.fohInputNumber = fohInputNumber;
	}

	public String getMonInputNumber() {
		return monInputNumber;
	}

	public void setMonInputNumber(String monInputNumber) {
		this.monInputNumber = monInputNumber;
	}

	public String getSourceName() {
		return sourceName;
	}

	public void setSourceName(String sourceName) {
		this.sourceName = sourceName;
	}

	public String getInputType() {
		return inputType;
	}

	public void setInputType(String inputType) {
		this.inputType = inputType;
	}

	public String getMicdiName() {
		return micdiName;
	}

	public void setMicdiName(String micdiName) {
		this.micdiName = micdiName;
	}

	public String getStandType() {
		return standType;
	}

	public void setStandType(String standType) {
		this.standType = standType;
	}

	public TrackSheet getTrackSheet() {
		return trackSheet;
	}

	public void setTrackSheet(TrackSheet trackSheet) {
		this.trackSheet = trackSheet;
	}

	

	@Override
	public String toString() {
		return "Inputs [id=" + id + ", subsnakeNumber=" + subsnakeNumber + ", stageboxInputNumber="
				+ stageboxInputNumber + ", fohInputNumber=" + fohInputNumber + ", monInputNumber=" + monInputNumber
				+ ", sourceName=" + sourceName + ", inputType=" + inputType + ", micdiName=" + micdiName
				+ ", standType=" + standType + "]";
	}
	
	
	
	
	
	
	 
	
	

}
