package fr.formation.TipTopTravel.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.TipTopTravel.dao.CountryRepository;
import fr.formation.TipTopTravel.model.Menu;


@Controller
public class MainController {
	
	private static final String KEY_SUFFIX_TITLE = ".title";
	private static final String KEY_SUFFIX_URL = ".url";

	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private MessageSource messageSource;
	
	@Autowired
	private CountryRepository repository; 
	
	/**
	 * @param messageSource the messageSource to set
	 */
	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	@RequestMapping("/index")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView("index");
		mav.getModel().put("countryList", this.repository.findAll());
		return mav;
	}
	
	
	private String getMessage(final String key){
		return this.messageSource.getMessage(key, null, Locale.getDefault());
	}
	

}
