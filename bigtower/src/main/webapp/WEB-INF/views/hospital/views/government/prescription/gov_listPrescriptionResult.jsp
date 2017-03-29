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
					<th><h4>환자이름</h4></th>
					<th><h4>1일투약횟수</h4></th>
					<th><h4>1회투여량</h4></th>
					<th><h4>총투약일수</h4></th>
					<th><h4>용법</h4></th>
					<th><h4>처방작성일자</h4></th>			
				</tr>
			</thead>
			<tbody>
				<c:forEach var="listPrescription" items="${prescriptionList}">
					<tr>
						<td>${listPrescription.goHospitalName}</td>
						<td>${listPrescription.goDoctorName}</td>
						<td>${listPrescription.goTreatSubjectName}</td>
						<td>${listPrescription.goCitizenName}</td>
						<td>${listPrescription.goPrescriptionResultInjectionNumber}</td>
						<td>${listPrescription.goPrescriptionResultDosage}</td>
						<td>${listPrescription.goPrescriptionResultTotalDate}</td>
						<td>${listPrescription.goPrescriptionResultUsage}</td>
						<td>${listPrescription.goPrescriptionResultWriteDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- /widget-content -->
</div><!-- /widget widget-table action-table -->