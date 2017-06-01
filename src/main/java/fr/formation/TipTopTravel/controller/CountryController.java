package fr.formation.TipTopTravel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.TipTopTravel.dao.CountryRepository;

@Controller
@RequestMapping("/pays")
public class CountryController {
	
	@Autowired
	private CountryRepository repository; 
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CountryController.class);
	
	@RequestMapping(path = "/index", method = RequestMethod.GET)
	public ModelAndView index(){
		final ModelAndView mav = new ModelAndView("country");
		// charge infos de la BDD dans la partie Model (cote serveur)
		mav.getModel().put("countryList", this.repository.findAll());
		return mav;
	}
	
	@RequestMapping(path = "/detail")
	public ModelAndView  details (@RequestParam final Integer countryID) {
		LOGGER.debug("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO-------------dans details--------------OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
		final ModelAndView mav = new ModelAndView("countryDetails");
		mav.getModel().put("countryDetails", this.repository.findByCountryID(countryID));
		return mav;
	}


}
