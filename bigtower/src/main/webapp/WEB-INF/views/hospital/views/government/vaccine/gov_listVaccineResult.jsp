<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
	<div class="widget widget-table action-table">
        <div class="widget-content">
          <table class="table table-striped table-bordered">
            <thead>
              <tr>
              	<th><h4>환자명</h4></th>
				<th><h4>의사명</h4></th>
				<th><h4>진료과목</h4></th>
				<th><h4>병원명</h4></th>
				<th><h4>접종명</h4></th>
				<th><h4>접종차수</h4></th>
				<th><h4>접종일</h4></th>
              </tr>
            </thead>
            <tbody>
            	<c:forEach var="vaccinList" items="${vaccinationList}">
					<tr>
						<td>${vaccinList.goCitizenName}</td>
						<td>${vaccinList.goDoctorName}</td>
						<td>${vaccinList.goTreatSubjectName}</td>
						<td>${vaccinList.goHospitalName}</td>
						<td>${vaccinList.goVaccinationName}</td>
						<td>${vaccinList.goVaccinationResultDegree}</td>
						<td>${vaccinList.goVaccinationResultRegistrationDate}</td>
					</tr>
				</c:forEach>
            
            </tbody>
          </table>
        </div>
        <!-- /widget-content --> 
      </div>
      <!-- /widget --> 
      
<script>
	$(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	});
</script>

<%-- <h4>예방접종 리스트</h4>
	<table border="1">
		<tr>
			<td>접종명</td>
			<td>접종 차수</td>
			<td>접종일</td>
			<td>정부등록일</td>
		</tr>
	
		<c:forEach var="vaccinList" items="${vaccinationList}">
			<tr>
				<td>${vaccinList.goVaccinationName}</td>
				<td>${vaccinList.goVaccinationResultDegree}</td>
				<td>${vaccinList.goVaccinationResultRegistrationDate}</td>
				<td>${vaccinList.goVaccinationResultGoRegistrationDate}</td>
			</tr>
		</c:forEach>
	</table> --%>
	