package com.team4.project.government.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.team4.project.HomeController;
import com.team4.project.hospital.dto.HoVaccineType;
import com.team4.project.util.ContextParam;
import com.team4.project.util.GetReferenceData;
import com.team4.project.util.HttpUrlCon;

@Controller
public class GovernmentController {
	private static final Logger logger = LoggerFactory.getLogger(GovernmentController.class);
	@Autowired
	private GovernmentService goService;
	private Gson gson = new Gson();
	
	
	// 주민번호로 환자 검색 폼
	@RequestMapping(value="/government/searchTreatbyCitizenId", method=RequestMethod.GET)
	public String searchFormbyCitizenId(){
		return "/hospital/views/government/gov_serachTreatFormbyCitizenId";
	}
	
	// 주민번호로 환자진료정보 리스트 조회
	@RequestMapping(value="/government/searchResultByCitizenId", method=RequestMethod.POST)
	public String searchResultByCitizenId(String citizenId, HttpSession session, Model model){
		logger.debug("searchResultByCitizenId 진입");
		logger.debug("citizenId:"+citizenId);
		String doctorId = (String) session.getAttribute("DOCTORID");
		Map<String, Object> map = goService.searchResultByCitizenId(citizenId, doctorId);
		model.addAttribute("treatList", map.get("treatList"));
		model.addAttribute("diagnosisList", map.get("diagnosisList"));
		model.addAttribute("prescriptionList", map.get("prescriptionList"));
		model.addAttribute("hospitalizationList", map.get("hospitalizationList"));
		model.addAttribute("surgeryList", map.get("surgeryList"));
		model.addAttribute("bloodTestList", map.get("bloodTestList"));
		model.addAttribute("imageTestList", map.get("imageTestList"));
		model.addAttribute("checkupList", map.get("checkupList"));
		model.addAttribute("vaccinationList", map.get("vaccinationList"));
			
		return "/hospital/views/government/gov_searchResultByCitizenId";
	}
	
	
	// 의사아이디로 여러환자진료정보 리스트 조회
	@RequestMapping(value="/government/searchResultByDoctorId", method=RequestMethod.GET)
	public String searchResultByDoctorId( HttpSession session, Model model){
		logger.debug("searchResultByCitizenId 진입");
		String doctorId = (String) session.getAttribute("DOCTORID");
		Map<String, Object> map = goService.searchResultByDoctorId(doctorId);
		model.addAttribute("treatList", map.get("treatList"));
		model.addAttribute("diagnosisList", map.get("diagnosisList"));
		model.addAttribute("prescriptionList", map.get("prescriptionList"));
		//model.addAttribute("hospitalizationList", map.get("hospitalizationList"));
		model.addAttribute("surgeryList", map.get("surgeryList"));
		model.addAttribute("bloodTestList", map.get("bloodTestList"));
		model.addAttribute("imageTestList", map.get("imageTestList"));
		model.addAttribute("checkupList", map.get("checkupList"));
		model.addAttribute("vaccinationList", map.get("vaccinationList"));
			
		return "/hospital/views/government/gov_searchResultByDoctorId";
	}
	
	// 정부 db에서 주민번호 조회
	@RequestMapping(value="/government/checkCitizenId", method=RequestMethod.POST)
	public @ResponseBody String citizenIdCheck(String citizenId, String citizenName, HttpSession session){
		logger.debug("citizenId : " + citizenId);
		logger.debug("citizenName : " + citizenName);
		
		String checkResult = "";
		// doctorId는 세션에서 받아야함
		String doctorId = (String) session.getAttribute("DOCTORID");
		String url = ContextParam.context.getInitParameter("receiveUrl");
		HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/checkCitizenId");
		Map<String, String> map = new HashMap<String,String>();
		map.put("citizenId", citizenId);
		map.put("citizenName", citizenName);
		map.put("doctorId", doctorId);
		try {
			// 리턴결과가 allCorrect이면 사용가능한 주민번호(정부db에 등록된 주민번호)
			// 리턴결과가 nameIncorrect이면 이름이틀림(정부db에 주민번호는 마지만 이름이틀리다)
			// 리턴결과가 idIncorrect이면 이름이틀림(정부db에 주민번호가 틀리다)
			checkResult = conn.HttpUrlPOST(map);
			logger.debug("checkResult:"+checkResult);
		} catch (Exception e) {
			e.printStackTrace();
		}
		logger.debug("try절 이후에 checkResult값 : "+checkResult);
		return checkResult;
	}
	
	// httpPost를이용해 정부에서 코드값들 가져오는 메서드 테스트
	@RequestMapping(value="/government/getData", method=RequestMethod.GET)
	public String getData(){
		String doctorId = "";
		//List<HoMedicine> list1 = GetReferenceData.getMedicineCode(doctorId);
		//logger.debug("list1"+list1);
		//List<HoDisease> list2 = GetReferenceData.getDiseaseCode(doctorId);
		//logger.debug("list2"+list2);
		//List<HoOperationType> list3 = GetReferenceData.getSurgeryCode(doctorId);
		//logger.debug("list3"+list3);
		//List<HoTreatSubject> list4 = GetReferenceData.getTreatSubjectCode(doctorId);
		//logger.debug("list4"+list4);
		List<HoVaccineType> list5 = GetReferenceData.getVaccinationCode(doctorId);
		logger.debug("list5"+list5);
		
		return "home";
	}
	
	//초기화면 보여주기
	@RequestMapping(value="/government/", method=RequestMethod.GET)
	public String index(HttpSession session, Model model){
		logger.debug("index 메서드 호출");
		return "/hospital/views/government/gov_index";
	}
	
	//이미지파일 새창으로 열기
	@RequestMapping(value="/government/fileView", method=RequestMethod.GET)
	public String fileView(String fileName, String filePath, Model model){
		logger.debug("filePath:"+filePath);
		logger.debug("filePath.lastIndexOf(/):"+filePath.lastIndexOf("/")+1);
		String kind = filePath.substring(filePath.lastIndexOf("/")+1);
		logger.debug("kind:"+kind);
		String path = "";
		if(kind.equals("blood")){
			path = ContextParam.context.getInitParameter("getBloodPath");
		}
		if(kind.equals("image")){
			path = ContextParam.context.getInitParameter("getImagePath");
		}
		if(kind.equals("checkup")){
			path = ContextParam.context.getInitParameter("getCheckupPath");
		}
		String ulr = path+fileName;;
		model.addAttribute("imageName", ulr);
		return "/hospital/views/government/gov_fileView";
	}

}
