package com.team4.project.hospital.receiveReservation.controller;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team4.project.hospital.dto.HoPatient;

@Controller
public class HoReceiveReservationController {
	private static final Logger logger = LoggerFactory.getLogger(HoReceiveReservationController.class);
	@Autowired
	private HoReceiveReservationService hoRRS;

	//ȯ����ȸ �� 
	@RequestMapping(value="/hospital_YJ/tempSearchPatient", method=RequestMethod.GET)
	public String selectPatient(){
		logger.debug("ȯ����ȸ GET��û");
	
		return "/hospital_YJ/tempSearchPatient";
	}
	
	
	@RequestMapping(value="/getpatient", method=RequestMethod.POST)
	public @ResponseBody HoPatient selectPatient1(@RequestParam("hoPatientCode")String hoPatientCode){
		logger.debug("selectPatient1 GET��û");
		
		HoPatient hopatient = hoRRS.selectPatient(hoPatientCode);
		return hopatient;
	}
}
	//ȯ����ȸ POST��û
/*	@RequestMapping(value="/hospital_YJ/tempSearchPatient", method=RequestMethod.POST)
	public String selectPatient(String patient){
		logger.debug("ȯ����ȸ��ưŬ�� POST��û"+toString());
		
		return "redirect:/hospital_YJ/tempSearchPatient";
	}*/
	


