<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp"%>
<!-- 사용자 메뉴얼 코드 시작 -->
	<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
	<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
	
	<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-left'
			, title: '접수 목록'
			, text: '현재 접수등록된 환자들의 목록을 보여줍니다.'
		});
		guidely.add ({
			attachTo: '#target-2'
			, anchor: 'top-right'
			, title: '접수 완료'
			, text: '접수완료 버튼을 클릭하면 접수가 완료되고 진료대기자 명단에 추가됩니다.'
		});
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->
<style>

th {
	font-size: 15px;
}
</style>
<c:if test="${!empty receiveList}">
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="target-1" class="widget">
							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>접수 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><h4>환자명</h4></th>
											<th><h4>진료과</h4></th>
											<th><h4>방문목적</h4></th>
											<th><h4>접수일</h4></th>
											<th class="td-actions"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="ReceiveList" items="${receiveList}">
											<tr>
												<td>${ReceiveList.hoPatientName }</td>
												<td>${ReceiveList.hoTreatSubjectName }</td>
												<td>${ReceiveList.hoReceivePurpose }</td>
												<td>${ReceiveList.hoReceiveRegistrationDate }</td>
												<td><a
													href="<c:url value='/hospital/addTreat?
												hoPatientCode=${ReceiveList.hoPatientCode}&
												hoReceiveCode=${ReceiveList.hoReceiveCode}&
												hoTreatSubjectCode=${ReceiveList.hoTreatSubjectCode}'/>">
														<button id="target-2">${ReceiveList.hoReceiveStateName }</button>
												</a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget -->
					</div>
					<!-- /span8 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
	<!-- /main -->
</c:if>
<c:if test="${empty receiveList }">
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-list-alt"></i>
								<h3>접수 목록</h3>
							</div>
							<div class="widget-content" align="center">
								<br /><br />
								<h3>목록이 없습니다.</h3>
								<br />
							</div>
						</div>
					</div>
					<!-- /span8 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
	<!-- /main -->
</c:if>

<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>
