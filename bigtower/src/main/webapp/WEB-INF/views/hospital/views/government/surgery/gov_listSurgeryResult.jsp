<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="widget widget-table action-table">
	<div class="widget-content">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th><h4>병원명</h4></th>
					<th><h4>의사명</h4></th>
					<th><h4>환자명</h4></th>
					<th><h4>수술명</h4></th>
					<th><h4>수술일</h4></th>
				</tr>
			</thead>
			<tbody>	
				<c:forEach var="surgeryList" items="${surgeryList}">
					<tr>
						<td>${surgeryList.goHospitalName}</td>
						<td>${surgeryList.goDoctorName}</td>
						<td>${surgeryList.goCitizenName}</td>
						<td>${surgeryList.goSurgeryName}</td>
						<td>${surgeryList.goSurgeryResultRegistrationDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- /widget-content -->
</div><!-- /widget widget-table action-table -->