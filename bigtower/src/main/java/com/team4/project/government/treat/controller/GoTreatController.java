package com.team4.project.government.treat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team4.project.government.treat.domain.GoTreat;

@Controller
public class GoTreatController {
	private static final Logger logger = LoggerFactory.getLogger(GoTreatController.class);
	
	@Autowired
	private GoTreatService goTCS;

	//진료 상세보기
	@RequestMapping(value="/government/treatView", method=RequestMethod.GET)
	public String goSelectTreat(Model model,
			@RequestParam(value="goTreatCode")String goTreatCode){
		System.out.println("진료상세보기 진료코드 : "+goTreatCode);
		model.addAttribute("Treat",goTCS.goSelectTreat(goTreatCode));
		return "/government_si/goSelectTreat";
	}
	
	//진료목록  검색
	@RequestMapping(value="/government/treatSearch", method=RequestMethod.GET)
	public @ResponseBody List<GoTreat> treatList(@RequestParam(
			value="selectConditions") String selectConditions,
			@RequestParam(value="searchContents")String searchContents){
		
		List<GoTreat> goTreatList = goTCS.goTreatList(selectConditions,searchContents);
		System.out.println("treatList : "+goTCS.goTreatList(selectConditions,searchContents));
		//리스트를 출력한다. ( 진료목록, 질병목록은 서비스.java에서 실행이 된다....)
		return goTreatList;
	}
	
	//진료목록
	@RequestMapping(value="/government/treatList", method=RequestMethod.GET)
	public String treatSearch(){			
		return "/government_si/goTreatList";
	}
	
	
	
}