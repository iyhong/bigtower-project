package com.team4.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController_government_citizen {
	
	@RequestMapping(value = "/citizen/main", method = RequestMethod.GET)
	public String home() {
		
		return "government/citizen/cmain";
	}
	/*진료내역 경로*/
	@RequestMapping(value = "/citizen/treat", method = RequestMethod.GET)
	public String treat() {
		
		return "government/citizen/searchTreat";
	}
	/**/
	
}
