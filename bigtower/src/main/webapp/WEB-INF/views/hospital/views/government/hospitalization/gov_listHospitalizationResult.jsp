<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="widget widget-table action-table">
	<div class="widget-content">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th><h4>병원명</h4></th>
					<th><h4>의사명</h4></th>
					<th><h4>진료과목</h4></th>
					<th><h4>환자명</h4></th>
					<th><h4>입원일자</h4></th>
					<th><h4>퇴원일자</h4></th>
				</tr>
				</thead>
					<tbody>	
				<c:forEach var="hospitalizationList" items="${hospitalizationList}">
					<tr>
						<td>${hospitalizationList.goHospitalName}</td>
						<td>${hospitalizationList.goDoctorName}</td>
						<td>${hospitalizationList.goTreatSubjectName}</td>
						<td>${hospitalizationList.goCitizenName}</td>
						<td>${hospitalizationList.goHospitalizationEnterDate}</td>
						<td>${hospitalizationList.goHospitalizationExitDate}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- /widget-content -->
</div><!-- /widget widget-table action-table -->
