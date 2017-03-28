<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp"%>
<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>

<c:if test="${!empty operationList }">
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '수술대기중인 환자목록'
			, text: '의사의 요청에 의해 수술이 예정되있는 환자들의 목록입니다. 수술일지등록버튼을 클릭하면 수술을 시작한것으로 간주하고 수술일지를 작성할 수 있습니다.'
		});

		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget" id="target-1">
							<div class="widget-header">
								<i class="icon-cut"></i>
								<h3>수술인원 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><h4>환자명</h4></th>
											<th><h4>수술명</h4></th>
											<th><h4>수술예정일</h4></th>
											<th><h4>수술일지등록</h4></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="operationList" items="${operationList}">
											<tr>
												<td>${operationList.hoPatientName }</td>
												<td>${operationList.hoOperationTypeName }</td>
												<td>${operationList.hoOperationStartDate }</td>
												<td><a
													href="<c:url value='/hospital/operationView?hoOperationCode=${operationList.hoOperationCode }'/>">
														<button type="button">수술일지등록</button>
												</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget widget-table action-table -->
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
<c:if test="${empty operationList }">
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '수술대기중인 환자목록'
			, text: '의사의 요청에 의해 수술이 예정되있는 환자들의 목록입니다. 수술예정환자가 없으면 목록이 없다는 메세지를 출력합니다.'
		});

		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget" id="target-1">
							<div class="widget-header">
								<i class="icon-list-alt"></i>
								<h3>수술인원 목록</h3>
							</div>
							<div class="widget-content" align="center">
								<br />
								<br />
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