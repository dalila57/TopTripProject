package fr.formation.TipTopTravel.entity;

import java.io.Serializable;

public class Vocabulary implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private Integer vocabularyID;
	private String word;
	private String phrase;
	private Country countryID;
	private VocabularyCategory vocabularyCategoryID;
	/**
	 * @return the vocabularyID
	 */
	public Integer getVocabularyID() {
		return vocabularyID;
	}
	/**
	 * @param vocabularyID the vocabularyID to set
	 */
	public void setVocabularyID(Integer vocabularyID) {
		this.vocabularyID = vocabularyID;
	}
	/**
	 * @return the word
	 */
	public String getWord() {
		return word;
	}
	/**
	 * @param word the word to set
	 */
	public void setWord(String word) {
		this.word = word;
	}
	/**
	 * @return the phrase
	 */
	public String getPhrase() {
		return phrase;
	}
	/**
	 * @param phrase the phrase to set
	 */
	public void setPhrase(String phrase) {
		this.phrase = phrase;
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
	/**
	 * @return the vocabularyCategoryID
	 */
	public VocabularyCategory getVocabularyCategoryID() {
		return vocabularyCategoryID;
	}
	/**
	 * @param vocabularyCategoryID the vocabularyCategoryID to set
	 */
	public void setVocabularyCategoryID(VocabularyCategory vocabularyCategoryID) {
		this.vocabularyCategoryID = vocabularyCategoryID;
	}
	

}
