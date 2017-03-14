<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp" %>
<style>

.widget {
	
	position: relative;
		
	clear: both;
		
	width: auto;
		
	margin-bottom: 2em;
		
	overflow: auto;
		
	margin: 100px 300px 200px 300px;
}
@media (max-width: 1000px) {
.widget {
	
	position: relative;		
	clear: both;		
	width: auto;		
	margin-bottom: 2em;		
	overflow: auto;		
	margin: auto auto 100px auto;

}
</style>
	<div class="widget widget-table action-table">
              <div class="widget-header">
                  <i class="icon-large icon-signin"></i>
                  <h3>입퇴원 요청 목록</h3>
              </div>
              <!-- /widget-header -->
              <div class="widget-content">
                 <table class="table table-striped table-bordered">
					<thead>
						<tr>
						<th>환자명</th>
							<th>입원요청일</th>
							<th>입원등록</th>				
						</tr>
					</thead>
					<tbody>
						<c:forEach var="hospitalizationRequestList" items="${hospitalizationRequestList}">
							<tr>		
								<td>${hospitalizationRequestList.hoPatientName}</td>
								<td>${hospitalizationRequestList.hoHospitalizationRequestDate}</td>
								<td>
									<a href="<c:url value='/hospital/addHospitalization?hoTreatmentCode=${hospitalizationRequestList.hoTreatmentCode}&
									hoHospitalizationRequestCode=${hospitalizationRequestList.hoHospitalizationRequestCode}'/>">
									<button>입원확인</button>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
              </div>
              <!-- /widget-content -->
          </div>
          <!-- /widget widget-table action-table -->

<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp" %>