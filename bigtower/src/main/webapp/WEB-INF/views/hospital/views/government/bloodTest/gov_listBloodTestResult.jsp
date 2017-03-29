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
				<th><h4>혈당</h4></th>
				<th><h4>혈소판</h4></th>
				<th><h4>파일경로</h4></th>
				<th><h4>검사일</h4></th>
              </tr>
            </thead>
            <tbody>
            	<c:forEach var="getBloodTest" items="${bloodTestList}">
					<tr>
						<td>${getBloodTest.goCitizenName}</td>
						<td>${getBloodTest.goDoctorName}</td>
						<td>${getBloodTest.goTreatSubjectName}</td>
						<td>${getBloodTest.goHospitalName}</td>
						<td>${getBloodTest.goBloodTestBloodSugar}</td>
						<td>${getBloodTest.goBloodTestPlatelet}</td>
						<td>
							<a onclick="javascript:window.open('/bigtower/government/fileView?filePath=${getBloodTest.goBloodTestFilePath}&fileName=${getBloodTest.goBloodTestFileName}','','height=500,width=600,left=500,top=300'); return false" style='cursor:hand'>
								<button><i class="icon-folder-open"></i></button>
							</a>
						</td>
						<td>${getBloodTest.goBloodTestDate}</td>
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
