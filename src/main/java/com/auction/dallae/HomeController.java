package com.auction.dallae;


import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.auction.dallae.service.SignUpService;
import com.auction.dallae.vo.SignUp;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController { 
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);        
	  

	@Autowired
	public SignUpService sus;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model m,@ModelAttribute SignUp su) {
		logger.info("Welcome home! The client locale is {}.", locale);
		

		m.addAttribute("ko_kim_signupList", sus.selectSignUpList(su) );
		
		return "home";



}
}