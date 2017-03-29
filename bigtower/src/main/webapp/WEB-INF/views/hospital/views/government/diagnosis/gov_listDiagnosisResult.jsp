<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="widget widget-table action-table">
	<div class="widget-content">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th><h4>병원명</h4></th>
					<th><h4>의사명</h4></th>
					<th><h4>진료과목명</h4></th>
					<th><h4>환자명</h4></th>
					<th><h4>질병명</h4></th>
					<th><h4>진단등록일</h4></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="listDiagnosis" items="${diagnosisList}">
					<tr>
						<td>${listDiagnosis.goHospitalName}</td>
						<td>${listDiagnosis.goDoctorName}</td>
						<td>${listDiagnosis.goTreatSubjectName}</td>
						<td>${listDiagnosis.goCitizenName}</td>
						<td>${listDiagnosis.goDiseaseKor}</td>
						<td>${listDiagnosis.goDiagnosisWriteDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- /widget-content -->
</div><!-- /widget widget-table action-table -->
