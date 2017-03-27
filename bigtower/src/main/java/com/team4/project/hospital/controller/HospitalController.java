package com.team4.project.hospital.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team4.project.hospital.dto.HoLoginCheckStaffSub;
import com.team4.project.hospital.dto.HoPatient;
import com.team4.project.util.ContextParam;
import com.team4.project.util.HttpUrlCon;

@Controller
public class HospitalController {
	private static final Logger logger = LoggerFactory.getLogger(HospitalController.class);
	
	@Autowired
	private HospitalService hoService;
	
	//인덱스 화면 보기
	@RequestMapping(value="/hospital/", method=RequestMethod.GET)
	public String index(Model model, HttpSession session){
		String disease = null;
		String medicine = null;
		String hoHospitalCode = (String) session.getAttribute("HOSPITALCODE");
		String doctorId = (String) session.getAttribute("DOCTORID");
		Map<String,String> map = new HashMap<String, String>();
		map.put("hospitalId", hoHospitalCode);
		String url = ContextParam.context.getInitParameter("receiveUrl");
		HttpUrlCon firstHttpUrlcon = new HttpUrlCon(url+"/bigbang/government/getDiseaseCode");
		try{
			disease = firstHttpUrlcon.HttpUrlPOST(map);
		}catch(Exception e){
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		HttpUrlCon secondHttpUrlcon = new HttpUrlCon(url+"/bigbang/government/getMedicineCode");
		try {
			medicine = secondHttpUrlcon.HttpUrlPOST(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Map<String,Object> resultMap = hoService.statistics(hoHospitalCode,disease,medicine);
		model.addAttribute("resultMap",resultMap);
		return "/hospital/views/index";
	}
	
	//로그인페이지 보기
	@RequestMapping(value="/hospital/login", method=RequestMethod.GET)
	public String login(){
		return "/hospital/views/login/login";
	}
	
	//로그인 처리
	@RequestMapping(value="/hospital/login", method=RequestMethod.POST)
	public String login(String hoStaffId, String hoStaffPw, HttpSession session){
		logger.debug("hoStaffId:"+hoStaffId);
		logger.debug("hoStaffPw:"+hoStaffPw);
		HoLoginCheckStaffSub staff = hoService.loginCheck(hoStaffId, hoStaffPw);
		if (staff!=null){
			session.setAttribute("HOSPITALCODE", staff.getHoHospitalCode());
			session.setAttribute("HOSPITALNAME", staff.getHoHospitalName());
			session.setAttribute("STAFFLEVELCODE", staff.getStaffLevelCode());
			session.setAttribute("STAFFLEVELNAME", staff.getStaffLevelName());
			if(staff.getStaffLevelCode()==1){
				session.setAttribute("DOCTORID", staff.getHoDoctorId());
			}
			session.setAttribute("HOSTAFFID", hoStaffId);
			session.setAttribute("HOSTAFFNAME", staff.getHoStaffName());
			logger.debug("session HOSPITALCODE:"+session.getAttribute("HOSPITALCODE"));
			logger.debug("session HOSPITALNAME:"+session.getAttribute("HOSPITALNAME"));
			logger.debug("session STAFFLEVELCODE:"+session.getAttribute("STAFFLEVELCODE"));
			logger.debug("session STAFFLEVELNAME:"+session.getAttribute("STAFFLEVELNAME"));
			logger.debug("session HOSTAFFID:"+session.getAttribute("HOSTAFFID"));
			logger.debug("session HOSTAFFNAME:"+session.getAttribute("HOSTAFFNAME"));
			logger.debug("session DOCTORID:"+session.getAttribute("DOCTORID"));
		}
		return "redirect:/hospital/";
	}
	
	//로그아웃 실행
	@RequestMapping(value="/hospital/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/hospital/login";
	}
	
	//환자등록 페이지
	@RequestMapping(value="/hospital/addPatient", method=RequestMethod.GET)
	public String addPatient(String hoCitizenId, String hoPatientName, Model model){
		model.addAttribute("hoCitizenId", hoCitizenId);
		model.addAttribute("hoPatientName", hoPatientName);
		return "/hospital/views/patient/addPatient";
	}
	
	//환자등록 처리
	@RequestMapping(value="/hospital/addPatient", method=RequestMethod.POST)
	public String addPatient(HoPatient hoPatient, 
							 HttpSession session,
							 RedirectAttributes redidredctAttributes){
		//로그인된 직원의 병원코드를 가져와 환자등록시 이 병원코드가 들어가도록 셋팅
		if(session!=null){
			String hoHospitalCode = (String) session.getAttribute("HOSPITALCODE");
			hoPatient.setHoHospitalCode(hoHospitalCode);
			System.out.println("hoPatient : "+hoPatient);
		}
		String hoCitizenId = hoPatient.getHoCitizenId();
		System.out.println("hoCitizenId : " +hoCitizenId);
		int result = hoService.addPatient(hoPatient);
		System.out.println("환자등록 성공 여부 : " + result);
		
		//환자등록 완료 분기문
		if(result==1){
			System.out.println("환자등록이 완료되었습니다.");
			redidredctAttributes.addAttribute("hoCitizenId", hoCitizenId);
			return "redirect:/hospital/addChart";
		}else{
			System.out.println("환자등록오류");
			return "/hospital/views/patient/addPatient";
		}
		
	}
	//정부OPEN API 확인
	@RequestMapping(value="/hospital/viewGovernmentInfo", method=RequestMethod.GET)
	public String viewGovernmentInfo(){	
		return "/hospital/views/government/openAPI/viewGovernmentInfo";
	}
	
	
}
