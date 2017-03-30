<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp" %>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr style="background-color: yellow;">
				<td colspan="3"><h4 style="text-align: center;">진료</h4></td>
			</tr>
			<!-- treatCode로 하나의 진료내용 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한사람의 진료내용</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneTreatByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneTreatByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 진료리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 사람의 진료리스트</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListTreatByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListTreatByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- doctorId로 진료리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 명의 의사에게 진료받은 여러사람의 진료리스트</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListTreatByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListTreatByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
		<!-- 진단&처방 -->
			<tr style="background-color: #62C15B;">
				<td colspan="3"><h4 style="text-align: center;">진단&처방</h4></td>
			</tr>
			<!-- treatCode로 하나의 진단결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">진료코드로 진단결과 가져오기</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListDiagnosisByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListDiagnosisByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 진단결과 리스트조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">주민번호로 진단결과리스트 가져오기</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListDiagnosisByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListDiagnosisByCitizenid?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- doctorId로 진단결과 리스트조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 명의 의사에게 진료받은 진단결과리스트 가져오기</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListDiagnosisByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListDiagnosisByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- treatCode로 투약코드 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">진료코드로 처방(약)결과 가져오기</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListPrescriptionByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListPrescriptionByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 투약코드 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한명의 처방(약)결과 가져오기</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListPrescriptionByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListPrescriptionByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- doctorId로 투약코드 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한명의 의사에가 진료한 처방(약)결과 가져오기</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListPrescriptionByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListPrescriptionByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
		<!-- 수술 -->
			<tr style="background-color: #DA720B;">
				<td colspan="3"><h4 style="text-align: center;">수술</h4></td>
			</tr>
			<!-- treatCode로 하나의 수술결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한사람의 수술결과내용</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneSurgeryByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneSurgeryByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 수술결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한 명의 수술결과 리스트</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListSurgeryByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListSurgeryByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- doctorId로 수술결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">의사 한 명의 수술결과 리스트</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListSurgeryByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListSurgeryByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
		<!-- 입퇴원 -->
			<tr style="background-color: #BB54C0;">
				<td colspan="3"><h4 style="text-align: center;">입퇴원</h4></td>
			</tr>
			<!-- treatCode로 하나의 입퇴원결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 진료의 입퇴원결과 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneHospitalizationByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneHospitalizationByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 입퇴원리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한 명의 입퇴원결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListHospitalizationByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListHospitalizationByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
		<!-- 혈액검사 -->
			<tr style="background-color: #D94D4D;">
				<td colspan="3"><h4 style="text-align: center;">혈액검사</h4></td>
			</tr>
			<!-- treatCode로 하나의 혈액검사결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 진료의 혈액검사결과 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneBloodTestResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneBloodTestResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 혈액검사결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한 명의 혈액검사결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListBloodTestResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListBloodTestResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- doctorId 혈액검사결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">의사한명이 검사한 혈액검사결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListBloodTestResultByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListBloodTestResultByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
		<!-- 영상검사 -->
			<tr style="background-color: #4D54D9;">
				<td colspan="3"><h4 style="text-align: center;">영상검사</h4></td>
			</tr>
			<!-- treatCode로 하나의 영상검사결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 진료의 영상검사결과 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneImageTestResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneImageTestResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- citizenId로 영상검사결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한 명의 영상검사결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListImageTestResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListImageTestResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- doctorId 영상검사결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">의사한명이 검사한 영상검사결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListImageTestResultByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListImageTestResultByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
		<!-- 예방접종 -->
			<tr style="background-color: #D9D44D;">
				<td colspan="3"><h4 style="text-align: center;">예방접종</h4></td>
			</tr>
			<!-- treatCode로 하나의 예방접종결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 진료의 예방접종결과 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneVaccinationResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneVaccinationResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- citizenId로 예방접종결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한 명의 예방접종결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListVaccinationResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListVaccinationResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- doctorId 예방접종결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">의사한명이 검사한 예방접종결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListVaccinationResultByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListVaccinationResultByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
		<!-- 건강검진 -->
			<tr style="background-color: #D9D44D;">
				<td colspan="3"><h4 style="text-align: center;">건강검진</h4></td>
			</tr>
			<!-- treatCode로 하나의 예방접종결과 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">한 진료의 건강검진결과 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getOneCheckupResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getOneCheckupResultByTreatCode?treatCode=hospital_1_treatment_1&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>treatCode</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 진료코드</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- citizenId로 건강검진결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">국민 한 명의 건강검진결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListCheckupResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListCheckupResultByCitizenId?citizenId=900101-1000001&doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록되어있는 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		
			<!-- doctorId 건강검진결과리스트 조회 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">의사한명이 검사한 건강검진결과 리스트 조회</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getListCheckupResultByDoctorId?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getListCheckupResultByDoctorId?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
		<!-- 참고자료 -->
			<tr style="background-color: #92FFFF;">
				<td colspan="3"><h4 style="text-align: center;">참고자료</h4></td>
			</tr>
			<!-- 약코드 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">약품코드</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getMedicineCode?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getMedicineCode?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- 질병 코드 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">질병 코드</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getDiseaseCode?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getDiseaseCode?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- 진료과목 코드 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">진료과목 코드</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getTreatSubjectCode?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getTreatSubjectCode?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- 수술 코드 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">수술 코드</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getSurgeryCode?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getSurgeryCode?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
			<!-- 예방접종 코드 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">예방접종 코드</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/getVaccinationCode?doctorId=doctor_1">
				http://loverman85.cafe24.com/bigbang/government/getVaccinationCode?doctorId=doctor_1</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
	
		<!-- 주빈번호조회 -->
			<tr style="background-color: #92FFFF;">
				<td colspan="3"><h4 style="text-align: center;">주민번호 조회(유효한 주민번호인지 확인하기 위함)</h4></td>
			</tr>
			<!-- 약코드 -->
			<tr style="background-color: #C2E2E8;">
				<td colspan="3">약품코드</td>
			</tr>
			<tr>
				<td style="background-color: #BDBDBD;">요청URL :</td>
				<td colspan="2"><a href="http://loverman85.cafe24.com/bigbang/government/checkCitizenId?citizenId=900101-1000001&doctorId=doctor_1&citizenName=도우너">
				http://loverman85.cafe24.com/bigbang/government/checkCitizenId?citizenId=900101-1000001&doctorId=doctor_1&citizenName=도우너</a></td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">요청파라메터</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td style="max-width: 30%; width: 30%;">Element</td>
				<td colspan="2">Discript</td>
			</tr>
			<tr>
				<td>doctorId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에서 부여한 의사아이디</td>
			</tr>
			<tr>
				<td>citizenName</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록된 이름</td>
			</tr>
			<tr>
				<td>citizenId</td>
				<td style="max-width: 40%; width: 40%;">필수</td>
				<td>정부에 등록된 주민번호</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td colspan="3">반환값</td>
			</tr>
			<tr style="background-color: #BDBDBD;">
				<td>Element</td>
				<td colspan="2">discription</td>
			</tr>
			<tr>
				<td colspan="3"><br/><br/><br/></td>
			</tr>
		</table>
	</div><!-- /container -->
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp" %>
