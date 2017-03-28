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
			, title: '진료 대기자 목룍'
			, text: '진료 대기중인 환자의 목록을 보여줍니다.'
		});
		guidely.add ({
			attachTo: '#target-2'
			, anchor: 'top-right'
			, title: '진료보기'
			, text: '진료보기 버튼을 클릭하면 진료를 등록하는 페이지로 넘어갑니다.'
		});
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->
<c:if test="${!empty treatList }">
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div id="target-1" class="widget">
							<div class="widget-header">
								<i class="icon-th-list"></i>
								<h3>진료 대기자 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><h4>환자명</h4></th>
											<th><h4>진료과</h4></th>
											<th><h4>의사명</h4></th>
											<th><h4>접수일</h4></th>
											<th class="td-actions"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="treat" items="${treatList}">
											<tr>
												<td>${treat.hoPatientName }</td>
												<td>${treat.hoTreatSubjectName }</td>
												<td>${treat.hoDoctorName }</td>
												<td>${treat.hoTreatmentWriteDate }</td>
												<td><a
													href="<c:url value='/hospital/treatView?hoTreatmentCode=${treat.hoTreatmentCode}'/>">
														<button id="target-2">진료보기</button>
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
					<!-- /span12 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
</c:if>
<c:if test="${empty treatList }">
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-list-alt"></i>
								<h3>진료 대기자 목록</h3>
							</div>
							<div class="widget-content" align="center">
								<br /><br />
								<h3>목록이 없습니다.</h3>
								<br />
							</div>
						</div>
					</div>
					<!-- /span12 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
</c:if>
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>
