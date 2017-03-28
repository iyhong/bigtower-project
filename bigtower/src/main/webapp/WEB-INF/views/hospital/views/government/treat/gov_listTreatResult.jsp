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
					<th><h4>진료내용</h4></th>
					<th><h4>진료등록일</h4></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${treatList}">
					<tr>
						<td>${list.goHospitalName}</td>
						<td>${list.goDoctorName}</td>
						<td>${list.goTreatSubjectName}</td>
						<td>${list.goCitizenName}</td>
						<td>${list.goTreatContents}</td>
						<td>${list.goTreatRegistrationDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- /widget-content -->
</div><!-- /widget widget-table action-table -->
