package com.team4.project;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDao {
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	
	public List selectTreatSubject(){
		System.out.println("DAO����");
		return sqlsession.selectList("government.selectTreatSubject");
	}
	
}
