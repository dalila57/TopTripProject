package fr.formation.TipTopTravel.entity;

import java.io.Serializable;

public class Suitcase implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private Integer suitcaseID;
	private Country countryID;
	/**
	 * @return the suitcaseID
	 */
	public Integer getSuitcaseID() {
		return suitcaseID;
	}
	/**
	 * @param suitcaseID the suitcaseID to set
	 */
	public void setSuitcaseID(Integer suitcaseID) {
		this.suitcaseID = suitcaseID;
	}
	/**
	 * @return the countryID
	 */
	public Country getCountryID() {
		return countryID;
	}
	/**
	 * @param countryID the countryID to set
	 */
	public void setCountryID(Country countryID) {
		this.countryID = countryID;
	}
	
	
	
	

}
