package fr.formation.TipTopTravel.entity;

import java.io.Serializable;

public class HygieneObjects implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private Integer hygieneObjectID;
	private String hygieneObjectName;
	private Suitcase suitcaseID;
	/**
	 * @return the hygieneObjectID
	 */
	public Integer getHygieneObjectID() {
		return hygieneObjectID;
	}
	/**
	 * @param hygieneObjectID the hygieneObjectID to set
	 */
	public void setHygieneObjectID(Integer hygieneObjectID) {
		this.hygieneObjectID = hygieneObjectID;
	}
	/**
	 * @return the hygieneObjectName
	 */
	public String getHygieneObjectName() {
		return hygieneObjectName;
	}
	/**
	 * @param hygieneObjectName the hygieneObjectName to set
	 */
	public void setHygieneObjectName(String hygieneObjectName) {
		this.hygieneObjectName = hygieneObjectName;
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
