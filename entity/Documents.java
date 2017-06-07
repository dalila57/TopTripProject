package fr.formation.TipTopTravel.entity;

import java.io.Serializable;

public class Documents implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private Integer documentID;
	private String documentName;
	private Suitcase suitcaseID;
	/**
	 * @return the documentID
	 */
	public Integer getDocumentID() {
		return documentID;
	}
	/**
	 * @param documentID the documentID to set
	 */
	public void setDocumentID(Integer documentID) {
		this.documentID = documentID;
	}
	/**
	 * @return the documentName
	 */
	public String getDocumentName() {
		return documentName;
	}
	/**
	 * @param documentName the documentName to set
	 */
	public void setDocumentName(String documentName) {
		this.documentName = documentName;
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
