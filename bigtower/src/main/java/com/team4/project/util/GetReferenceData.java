package com.team4.project.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.team4.project.hospital.dto.HoDisease;
import com.team4.project.hospital.dto.HoMedicine;
import com.team4.project.hospital.dto.HoOperationType;
import com.team4.project.hospital.dto.HoTreatSubject;
import com.team4.project.hospital.dto.HoVaccineType;
import com.team4.project.hospital.treatChart.controller.HoTreatChartController;

public class GetReferenceData {
	private static final Logger logger = LoggerFactory.getLogger(GetReferenceData.class);

	private static Gson gson = new Gson();
	private static String url = ContextParam.context.getInitParameter("receiveUrl");
	
	// 1정부에서 투약코드 가져오는 메서드
	public static List<HoMedicine> getMedicineCode(String doctorId){
		HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getMedicineCode");
		List<HoMedicine> list = new ArrayList<HoMedicine>();
		try {
			// doctorId를 맵에 담는다
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			// 맵을 위 url로 전송하고 약 리스트를 리턴받는다
			String result = conn.HttpUrlPOST(map);
			logger.debug("result:"+result);
			// 리스트타입의 json을 java List 타입으로 parsing 한다 
			List<Map> resultMap = gson.fromJson(result, new TypeToken<List<Map>>(){}.getType());
			for(int i = 0; i<resultMap.size(); i++){
				HoMedicine hm = new HoMedicine();
				hm.setHoMedicineCode((String)resultMap.get(i).get("goMedicineCode"));
				hm.setHoMedicineName((String)resultMap.get(i).get("goMedicineName"));
				//logger.debug("hm:"+hm);
				list.add(hm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

	// 2정부에서 질병코드 가져오는 메서드
	public static List<HoDisease> getDiseaseCode(String doctorId){
		HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getDiseaseCode");
		List<HoDisease> list = new ArrayList<HoDisease>();
		try {
			// doctorId를 맵에 담는다
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			// 맵을 위 url로 전송하고 약 리스트를 리턴받는다
			String result = conn.HttpUrlPOST(map);
			logger.debug("result:"+result);
			// 리스트타입의 json을 java List 타입으로 parsing 한다 
			List<Map> resultMap = gson.fromJson(result, new TypeToken<List<Map>>(){}.getType());
			for(int i = 0; i<resultMap.size(); i++){
				HoDisease hd = new HoDisease();
				hd.setHoDiseaseCode((String)resultMap.get(i).get("goDiseaseCode"));
				hd.setHoDiseaseKor((String)resultMap.get(i).get("goDiseaseKor"));
				hd.setHoDiseaseEng((String)resultMap.get(i).get("goDiseaseEng"));
				//logger.debug("hd:"+hd);
				list.add(hd);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 3정부에서 질병코드 가져오는 메서드
	public static List<HoTreatSubject> getTreatSubjectCode(String doctorId){
		HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getTreatSubjectCode");
		List<HoTreatSubject> list = new ArrayList<HoTreatSubject>();
		try {
			// doctorId를 맵에 담는다
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			// 맵을 위 url로 전송하고 약 리스트를 리턴받는다
			String result = conn.HttpUrlPOST(map);
			logger.debug("result:"+result);
			// 리스트타입의 json을 java List 타입으로 parsing 한다 
			List<Map> resultMap = gson.fromJson(result, new TypeToken<List<Map>>(){}.getType());
			for(int i = 0; i<resultMap.size(); i++){
				HoTreatSubject hts = new HoTreatSubject();
				hts.setHoTreatSubjectCode((String)resultMap.get(i).get("goTreatSubjectCode"));
				hts.setHoTreatSubjectName((String)resultMap.get(i).get("goTreatSubjectName"));
				//logger.debug("hts:"+hts);
				list.add(hts);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 4정부에서 수술코드 가져오는 메서드
	public static List<HoOperationType> getSurgeryCode(String doctorId){
		HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getSurgeryCode");
		List<HoOperationType> list = new ArrayList<HoOperationType>();
		try {
			// doctorId를 맵에 담는다
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			// 맵을 위 url로 전송하고 약 리스트를 리턴받는다
			String result = conn.HttpUrlPOST(map);
			logger.debug("result:"+result);
			// 리스트타입의 json을 java List 타입으로 parsing 한다 
			List<Map> resultMap = gson.fromJson(result, new TypeToken<List<Map>>(){}.getType());
			for(int i = 0; i<resultMap.size(); i++){
				HoOperationType hot = new HoOperationType();
				hot.setHoOperationTypeCode((String)resultMap.get(i).get("goSurgeryCode"));
				hot.setHoOperationTypeName((String)resultMap.get(i).get("goSurgeryName"));
				//logger.debug("hot:"+hot);
				list.add(hot);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
		
	
	// 5정부에서 예방접종코드 가져오는 메서드
	public static List<HoVaccineType> getVaccinationCode(String doctorId){
		HttpUrlCon conn = new HttpUrlCon(url+"/bigbang/government/getVaccinationCode");
		List<HoVaccineType> list = new ArrayList<HoVaccineType>();
		try {
			// doctorId를 맵에 담는다
			Map<String, String> map = new HashMap<String, String>();
			map.put("doctorId", doctorId);
			// 맵을 위 url로 전송하고 약 리스트를 리턴받는다
			String result = conn.HttpUrlPOST(map);
			logger.debug("result:"+result);
			// 리스트타입의 json을 java List 타입으로 parsing 한다 
			List<Map> resultMap = gson.fromJson(result, new TypeToken<List<Map>>(){}.getType());
			for(int i = 0; i<resultMap.size(); i++){
				HoVaccineType hv = new HoVaccineType();
				hv.setHoVaccineTypeCode((String)resultMap.get(i).get("goVaccinationCode"));
				hv.setHoVaccineTypeDegree((Double)resultMap.get(i).get("goVaccinationDegree"));
				hv.setHoVaccineTypeName((String)resultMap.get(i).get("goVaccinationName"));
				//logger.debug("hv:"+hv);
				list.add(hv);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
