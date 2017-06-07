package fr.formation.TipTopTravel.entity;

import java.io.Serializable;

public class VocabularyCategory implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private Integer vocabularyCategoryID;
	private String vocabularyCategorName;
	/**
	 * @return the vocabularyCategoryID
	 */
	public Integer getVocabularyCategoryID() {
		return vocabularyCategoryID;
	}
	/**
	 * @param vocabularyCategoryID the vocabularyCategoryID to set
	 */
	public void setVocabularyCategoryID(Integer vocabularyCategoryID) {
		this.vocabularyCategoryID = vocabularyCategoryID;
	}
	/**
	 * @return the vocabularyCategorName
	 */
	public String getVocabularyCategorName() {
		return vocabularyCategorName;
	}
	/**
	 * @param vocabularyCategorName the vocabularyCategorName to set
	 */
	public void setVocabularyCategorName(String vocabularyCategorName) {
		this.vocabularyCategorName = vocabularyCategorName;
	}

	
}
