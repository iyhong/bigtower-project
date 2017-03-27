package com.team4.project.hospital.controller;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.project.hospital.dto.HoLoginCheckStaffSub;
import com.team4.project.hospital.dto.HoPatient;
import com.team4.project.hospital.dto.HoStatistics;

@Repository
public class HospitalDao {
	@Autowired
	private SqlSessionTemplate sql;
	
	//로그인 처리
	public HoLoginCheckStaffSub loginCheck(Map<String,String> map){
		return sql.selectOne("hospital.loginCheck",map);
	}
	//환자등록
	public int addPatient(HoPatient hoPatient){
		return sql.insert("hospital.addPatient", hoPatient);
	}
	//주민번호 중복여부 확인
	public String checkCitizenId(Map<String, Object> map){
		return sql.selectOne("hospital.checkCitizenId", map);
	}
	//하루 방문객 수
	public int dayVisitCitizenCount(Map<String, Object> map){
		return sql.selectOne("hospital.dayVisitCitizenCount", map);
	}
	//한달 방문객 수
	public int monthVisitCitizenCount(Map<String, Object> map){
		return sql.selectOne("hospital.monthVisitCitizenCount", map);
	}
	//일년 방문객 수
	public int yearVisitCitizenCount(Map<String, Object> map){
		return sql.selectOne("hospital.yearVisitCitizenCount", map);
	}
	//하루 진료과별 방문진료자 수 (진료과명,count)
	public List<HoStatistics> dayVisitTreatSubjectCitizenCount(Map<String, Object> map){
		return sql.selectList("hospital.dayVisitTreatSubjectCitizenCount", map);
	}
	//한달 진료과별 방문진료자 수 (진료과명,count)
	public List<HoStatistics> monthVisitTreatSubjectCitizenCount(Map<String, Object> map){
		return sql.selectList("hospital.monthVisitTreatSubjectCitizenCount", map);
	}
	//일년 진료과별 방문진료자 수 (진료과명,count)
	public List<HoStatistics> yearVisitTreatSubjectCitizenCount(Map<String, Object> map){
		return sql.selectList("hospital.yearVisitTreatSubjectCitizenCount", map);
	}
	//일주일 진단된 질병 순위
	public List<HoStatistics> weekDiseaseCodeRanking(Map<String, Object> map){
		return sql.selectList("hospital.weekDiseaseCodeRanking", map);
	}
	//한달 진단된 질병 순위
	public List<HoStatistics> monthDiseaseCodeRanking(Map<String, Object> map){
		return sql.selectList("hospital.monthDiseaseCodeRanking", map);
	}
	//일년 진단된 질병 순위
	public List<HoStatistics> yearDiseaseCodeRanking(Map<String, Object> map){
		return sql.selectList("hospital.yearDiseaseCodeRanking", map);
	}
	//처방된 의약품 순위
	public List<HoStatistics> weekMedicineCodeRanking(Map<String, Object> map){
		return sql.selectList("hospital.weekMedicineCodeRanking", map);
	}
	//처방된 의약품 순위
	public List<HoStatistics> monthMedicineCodeRanking(Map<String, Object> map){
		return sql.selectList("hospital.monthMedicineCodeRanking", map);
	}
	//처방된 의약품 순위
	public List<HoStatistics> yearMedicineCodeRanking(Map<String, Object> map){
		return sql.selectList("hospital.yearMedicineCodeRanking", map);
	}
}
