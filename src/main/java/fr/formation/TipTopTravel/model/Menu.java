package fr.formation.TipTopTravel.model;

import java.io.Serializable;

public class Menu implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String url;
	
	public Menu (final String url){
		this.url = url;
	}
	
	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}
	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	

}