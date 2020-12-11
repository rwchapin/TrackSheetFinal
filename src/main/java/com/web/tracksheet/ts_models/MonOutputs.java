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
public class MonOutputs {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String outputType;
	
	private String outputNumber;
	
	private String outputFormat;
	
	private String outputDestination;
	
	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name="tracksheet_id")
	private TrackSheet trackSheet;
	
	
	

	public MonOutputs() {
		super();
	}

	public MonOutputs(Long id, String outputType, String outputNumber, String outputFormat, String outputDestination,
			TrackSheet trackSheet) {
		super();
		this.id = id;
		this.outputType = outputType;
		this.outputNumber = outputNumber;
		this.outputFormat = outputFormat;
		this.outputDestination = outputDestination;
		this.trackSheet = trackSheet;
	}





	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOutputType() {
		return outputType;
	}

	public void setOutputType(String outputType) {
		this.outputType = outputType;
	}

	public String getOutputNumber() {
		return outputNumber;
	}

	public void setOutputNumber(String outputNumber) {
		this.outputNumber = outputNumber;
	}

	public String getOutputFormat() {
		return outputFormat;
	}

	public void setOutputFormat(String outputFormat) {
		this.outputFormat = outputFormat;
	}

	public String getOutputDestination() {
		return outputDestination;
	}

	public void setOutputDestination(String outputDestination) {
		this.outputDestination = outputDestination;
	}

	public TrackSheet getTrackSheet() {
		return trackSheet;
	}

	public void setTrackSheet(TrackSheet trackSheet) {
		this.trackSheet = trackSheet;
	}

	@Override
	public String toString() {
		return "MonOutputs [id=" + id + ", outputType=" + outputType + ", outputNumber=" + outputNumber
				+ ", outputFormat=" + outputFormat + ", outputDestination=" + outputDestination + "]";
	}
	
	
	
	

}
