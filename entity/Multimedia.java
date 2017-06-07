package fr.formation.TipTopTravel.entity;

import java.io.Serializable;

public class Multimedia implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private Integer multimediaID;
	private String multimediaName;
	private Suitcase suitcaseID;
	/**
	 * @return the multimediaID
	 */
	public Integer getMultimediaID() {
		return multimediaID;
	}
	/**
	 * @param multimediaID the multimediaID to set
	 */
	public void setMultimediaID(Integer multimediaID) {
		this.multimediaID = multimediaID;
	}
	/**
	 * @return the multimediaName
	 */
	public String getMultimediaName() {
		return multimediaName;
	}
	/**
	 * @param multimediaName the multimediaName to set
	 */
	public void setMultimediaName(String multimediaName) {
		this.multimediaName = multimediaName;
	}
	/**
	 * @return the suitcaseID
	 */
	public Suitcase getSuitcaseID() {
		return suitcaseID;
	}
	/**
	 * @param suitcaseID the suitcaseID to set
	 */
	public void setSuitcaseID(Suitcase suitcaseID) {
		this.suitcaseID = suitcaseID;
	}
	
	
	

}
