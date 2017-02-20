package com.team4.project.government.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team4.project.government.test.domain.GoBloodTest;

@Service
public class GoTestService {

	@Autowired
	private GoTestDao goTD;
	//기간으로 GoBloodTest를 조회함
	public List<GoBloodTest> selectBlood(GoBloodTest goBloodTest){
		
		
		return goTD.selectBlood(goBloodTest);
	}
	//혈당으로 GoBloodTest를 조회
	public List<GoBloodTest> selectBloodSugar(GoBloodTest goBloodTest){
		return goTD.selectBloodSugar(goBloodTest);
		
	}
}