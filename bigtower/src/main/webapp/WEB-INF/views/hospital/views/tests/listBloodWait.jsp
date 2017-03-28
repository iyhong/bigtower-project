<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp"%>

<!-- 사용자 메뉴얼 코드 시작 -->
	<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
	<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
	
	<script>
	$(function () {
		
		guidely.add ({
			attachTo: '#widget-1'
			, anchor: 'top-right'
			, title: '혈액 검사결과 대기자 목록'
			, text: '혈액 검사 결과 대기자 명단을 보여주는 목록이며, 결과등록 버튼을 클릭하면 등록페이지로 이동합니다.'
		});
		
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->

<c:if test="${!empty bloodList }">
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget" id="widget-1">
							<div class="widget-header">
								<i class="icon-list-alt"></i>
								<h3>혈액 검사 결과 대기목록</h3>
							</div>
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><h4>환자명</h4></th>
											<th><h4>검사요청코드</h4></th>
											<th><h4>진료코드</h4></th>
											<th><h4>상태</h4></th>
											<th class="td-actions"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="bloodList" items="${bloodList}">
											<tr>
												<td>${bloodList.hoPatientName}</td>
												<td>${bloodList.hoTestRequestCode}</td>
												<td>${bloodList.hoTreatmentCode}</td>
												<td>${bloodList.hoTestStateName}</td>
												<td><a
													href="<c:url value='/hospital/test/addBloodTest?hoTestRequestCode=${bloodList.hoTestRequestCode }'/>">
														<button>결과등록</button>
												</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
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
	<!-- /main -->
</c:if>
<c:if test="${empty bloodList }">
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-list-alt"></i>
								<h3>혈액 검사 결과 대기목록</h3>
							</div>
							<div class="widget-content" align="center">
								<br />
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
	<!-- /main -->
</c:if>

<%-- <a href="<c:url value='/hospital/test'/>"><button>전체목록</button></a>
	<a href="<c:url value='/hospital/test/ListBloodTest'/>"><button>혈액검사대기목록</button></a> --%>
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>
