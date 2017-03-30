package com.team4.project.government.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.team4.project.government.dto.GoBloodTest;
import com.team4.project.government.dto.GoCheckup;
import com.team4.project.government.dto.GoDiagnosis;
import com.team4.project.government.dto.GoHospitalization;
import com.team4.project.government.dto.GoImageTest;
import com.team4.project.government.dto.GoPrescription;
import com.team4.project.government.dto.GoSurgeryResult;
import com.team4.project.government.dto.GoTreat;
import com.team4.project.government.dto.GoVaccinationResult;
import com.team4.project.util.ContextParam;
import com.team4.project.util.HttpUrlCon;

@Service
public class GovernmentService {
	private static final Logger logger = LoggerFactory.getLogger(GovernmentService.class);
	private Gson gson = new Gson();

	// 주민번호로 의료정보 가져오기
	// (진료,진단,처방,입퇴원,수술,혈액검사,영상검사,건강검진,예방접종)
	public Map<String, Object> searchResultByCitizenId(String citizenId, String doctorId){
		logger.debug("searchResultByCitizenId 진입");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		String url = ContextParam.context.getInitParameter("receiveUrl");
		
		// 1.진료정보 가져오기
		try {
			List<GoTreat> treatList = new ArrayList<GoTreat>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListTreatByCitizenId");
			Map<String, String> map = new HashMap<String, String>(); 
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnTreat = conn.HttpUrlPOST(map);	//여기서 전송 해서 String으로 받아
			logger.debug("returnTreat : "+returnTreat);
			treatList = gson.fromJson(returnTreat, new TypeToken<List<GoTreat>>(){}.getType());
			logger.debug("treatList : "+treatList);
			resultMap.put("treatList", treatList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 2.진단정보 가져오기
		try{
			List<GoDiagnosis> diagnosisList = new ArrayList<GoDiagnosis>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListDiagnosisByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnDiagnosis = conn.HttpUrlPOST(map);
			logger.debug("returnDiagnosis 확인 : "+returnDiagnosis);
			diagnosisList = gson.fromJson(returnDiagnosis, new TypeToken<List<GoDiagnosis>>(){}.getType() );
			resultMap.put("diagnosisList", diagnosisList);
		}catch(Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 3.처방정보 가져오기
		try{
			List<GoPrescription> prescriptionList = new ArrayList<GoPrescription>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListPrescriptionByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnPrescription = conn.HttpUrlPOST(map);
			logger.debug("returnPrescription 확인 : "+returnPrescription);
			prescriptionList = gson.fromJson(returnPrescription, new TypeToken<List<GoPrescription>>(){}.getType() );
			resultMap.put("prescriptionList", prescriptionList);
		}catch(Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 4.입퇴원정보 가져오기
		try {
			List<GoHospitalization> hospitalizationList = new ArrayList<GoHospitalization>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListHospitalizationByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnHospitalization = conn.HttpUrlPOST(map);
			logger.debug("returnHospitalization 확인 : "+returnHospitalization);
			hospitalizationList = gson.fromJson(returnHospitalization, new TypeToken<List<GoHospitalization>>(){}.getType() );
			resultMap.put("hospitalizationList", hospitalizationList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 5.수술정보 가져오기
		try {
			List<GoSurgeryResult> surgeryList = new ArrayList<GoSurgeryResult>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListSurgeryByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnSurgery = conn.HttpUrlPOST(map);
			logger.debug("returnSurgery 확인 : "+returnSurgery);
			surgeryList = gson.fromJson(returnSurgery, new TypeToken<List<GoSurgeryResult>>(){}.getType() );
			resultMap.put("surgeryList", surgeryList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 6.혈액검사 가져오기
		try {
			List<GoBloodTest> bloodTestList = new ArrayList<GoBloodTest>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListBloodTestResultByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnBloodTest = conn.HttpUrlPOST(map);
			logger.debug("returnBloodTest 확인 : "+returnBloodTest);
			bloodTestList = gson.fromJson(returnBloodTest, new TypeToken<List<GoBloodTest>>(){}.getType() );
			resultMap.put("bloodTestList", bloodTestList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		
		// 7.영상검사 가져오기
		try {
			List<GoImageTest> imageTestList = new ArrayList<GoImageTest>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListImageTestResultByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnImageTest = conn.HttpUrlPOST(map);
			logger.debug("returnImageTest 확인 : "+returnImageTest);
			imageTestList = gson.fromJson(returnImageTest, new TypeToken<List<GoImageTest>>(){}.getType() );
			resultMap.put("imageTestList", imageTestList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		
		// 8.건강검진 가져오기
		try {
			List<GoCheckup> checkupList = new ArrayList<GoCheckup>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListCheckupResultByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnCheckup = conn.HttpUrlPOST(map);
			logger.debug("returnCheckup 확인 : "+returnCheckup);
			checkupList = gson.fromJson(returnCheckup, new TypeToken<List<GoCheckup>>(){}.getType() );
			resultMap.put("checkupList", checkupList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		
		// 9.예방접종 가져오기
		try {
			List<GoVaccinationResult> vaccinationList = new ArrayList<GoVaccinationResult>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListVaccinationResultByCitizenId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			map.put("citizenId", citizenId);
			String returnVaccination = conn.HttpUrlPOST(map);
			logger.debug("returnVaccination 확인 : "+returnVaccination);
			vaccinationList = gson.fromJson(returnVaccination, new TypeToken<List<GoVaccinationResult>>(){}.getType() );
			resultMap.put("vaccinationList", vaccinationList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		return resultMap;
	}
	
	
	
	
	// 의사 아이디로 의료정보 가져오기
	// (진료,진단,처방,입퇴원,수술,혈액검사,영상검사,건강검진,예방접종)
	public Map<String, Object> searchResultByDoctorId(String doctorId){
		logger.debug("searchResultByCitizenId 진입");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		String url = ContextParam.context.getInitParameter("receiveUrl");
		
		// 1.진료정보 가져오기
		try {
			List<GoTreat> treatList = new ArrayList<GoTreat>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListTreatByDoctorId");
			Map<String, String> map = new HashMap<String, String>(); 
			map.put("doctorId", doctorId);
			String returnTreat = conn.HttpUrlPOST(map);	//여기서 전송 해서 String으로 받아
			logger.debug("returnTreat : "+returnTreat);
			treatList = gson.fromJson(returnTreat, new TypeToken<List<GoTreat>>(){}.getType());
			logger.debug("treatList : "+treatList);
			resultMap.put("treatList", treatList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 2.진단정보 가져오기
		try{
			List<GoDiagnosis> diagnosisList = new ArrayList<GoDiagnosis>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListDiagnosisByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnDiagnosis = conn.HttpUrlPOST(map);
			logger.debug("returnDiagnosis 확인 : "+returnDiagnosis);
			diagnosisList = gson.fromJson(returnDiagnosis, new TypeToken<List<GoDiagnosis>>(){}.getType() );
			resultMap.put("diagnosisList", diagnosisList);
		}catch(Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 3.처방정보 가져오기
		try{
			List<GoPrescription> prescriptionList = new ArrayList<GoPrescription>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListPrescriptionByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnPrescription = conn.HttpUrlPOST(map);
			logger.debug("returnPrescription 확인 : "+returnPrescription);
			prescriptionList = gson.fromJson(returnPrescription, new TypeToken<List<GoPrescription>>(){}.getType() );
			resultMap.put("prescriptionList", prescriptionList);
		}catch(Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		/*
		// 4.입퇴원정보 가져오기
		try {
			List<GoHospitalization> hospitalizationList = new ArrayList<GoHospitalization>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListHospitalizationByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnHospitalization = conn.HttpUrlPOST(map);
			logger.debug("returnHospitalization 확인 : "+returnHospitalization);
			hospitalizationList = gson.fromJson(returnHospitalization, new TypeToken<List<GoHospitalization>>(){}.getType() );
			resultMap.put("hospitalizationList", hospitalizationList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		*/
		// 5.수술정보 가져오기
		try {
			List<GoSurgeryResult> surgeryList = new ArrayList<GoSurgeryResult>();
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListSurgeryByDoctorId");
			String returnSurgery = conn.HttpUrlPOST(map);
			logger.debug("returnSurgery 확인 : "+returnSurgery);
			surgeryList = gson.fromJson(returnSurgery, new TypeToken<List<GoSurgeryResult>>(){}.getType() );
			resultMap.put("surgeryList", surgeryList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		// 6.혈액검사 가져오기
		try {
			List<GoBloodTest> bloodTestList = new ArrayList<GoBloodTest>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListBloodTestResultByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnBloodTest = conn.HttpUrlPOST(map);
			logger.debug("returnBloodTest 확인 : "+returnBloodTest);
			bloodTestList = gson.fromJson(returnBloodTest, new TypeToken<List<GoBloodTest>>(){}.getType() );
			logger.debug("bloodTestList 확인 : "+bloodTestList);
			resultMap.put("bloodTestList", bloodTestList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		
		// 7.영상검사 가져오기
		try {
			List<GoImageTest> imageTestList = new ArrayList<GoImageTest>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListImageTestResultByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnImageTest = conn.HttpUrlPOST(map);
			logger.debug("returnImageTest 확인 : "+returnImageTest);
			imageTestList = gson.fromJson(returnImageTest, new TypeToken<List<GoImageTest>>(){}.getType() );
			resultMap.put("imageTestList", imageTestList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		
		// 8.건강검진 가져오기
		try {
			List<GoCheckup> checkupList = new ArrayList<GoCheckup>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListCheckupResultByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnCheckup = conn.HttpUrlPOST(map);
			logger.debug("returnCheckup 확인 : "+returnCheckup);
			checkupList = gson.fromJson(returnCheckup, new TypeToken<List<GoCheckup>>(){}.getType() );
			resultMap.put("checkupList", checkupList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		
		// 9.예방접종 가져오기
		try {
			List<GoVaccinationResult> vaccinationList = new ArrayList<GoVaccinationResult>();
			HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getListVaccinationResultByDoctorId");
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			String returnVaccination = conn.HttpUrlPOST(map);
			logger.debug("returnVaccination 확인 : "+returnVaccination);
			vaccinationList = gson.fromJson(returnVaccination, new TypeToken<List<GoVaccinationResult>>(){}.getType() );
			resultMap.put("vaccinationList", vaccinationList);
		} catch (Exception e) {
			logger.debug("예외발생");
			e.printStackTrace();
		}
		
		return resultMap;
	}
}
