<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp"%>
<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>


<c:if test="${!empty hospitalizationList}">
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '입원 환자목록'
			, text: '입원중인 환자들의 목록이 출력되고 퇴원확인 버튼을 누르면 퇴원처리가 됩니다.'
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
								<i class="icon-large icon-signout"></i>
								<h3>입원 환자 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><h4>환자명</h4></th>
											<th><h4>입원일</h4></th>
											<th><h4>퇴원처리</h4></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="hospitalizationList"
											items="${hospitalizationList}">
											<tr>
												<td>${hospitalizationList.hoPatientName}</td>
												<td>${hospitalizationList.hoHospitalizationStartDate}</td>
												<td><a
													href="<c:url value='/hospital/updateHospitalization?hoHospitalizationCode=${hospitalizationList.hoHospitalizationCode}'/>">
														<button>퇴원확인</button>
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
<c:if test="${empty hospitalizationList}">
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '입원 환자목록'
			, text: '입원중인 환자들의 목록이 출력됩니다. 입원중인 환자가 없으면 목록이 없다는 메세지를 출력합니다.'
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
								<h3>입원 환자 목록</h3>
							</div>
							<div class="widget-content" align="center">
								<br />
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
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>