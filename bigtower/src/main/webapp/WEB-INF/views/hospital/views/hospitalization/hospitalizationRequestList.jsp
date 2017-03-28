<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp"%>

<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>



<c:if test="${!empty hospitalizationRequestList}">
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '입원대기 환자목록'
			, text: '의사의 요청에 의해 입원수속중인 환자들의 목록입니다. 입원확인버튼을 누르면 입원이 되고 입원환자 목록을 보는페이지로 이동합니다.'
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
								<i class="icon-large icon-signin"></i>
								<h3>입퇴원 요청 목록</h3>
							</div>
							<!-- /widget-header -->
							<div class="widget-content">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th><h4>환자명</h4></th>
											<th><h4>입원요청일</h4></th>
											<th><h4>입원등록</h4></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="hospitalizationRequestList"
											items="${hospitalizationRequestList}">
											<tr>
												<td>${hospitalizationRequestList.hoPatientName}</td>
												<td>${hospitalizationRequestList.hoHospitalizationRequestDate}</td>
												<td><a
													href="<c:url value='/hospital/addHospitalization?hoTreatmentCode=${hospitalizationRequestList.hoTreatmentCode}&
									hoHospitalizationRequestCode=${hospitalizationRequestList.hoHospitalizationRequestCode}'/>">
														<button>입원확인</button>
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
<c:if test="${empty hospitalizationRequestList}">
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '입원대기 환자목록'
			, text: '의사의 요청에 의해 입원수속중인 환자들의 목록입니다. 입원환자에 대한 요청이 없으면 화면에 목록이 없다는 메세지를 출력합니다.'
		});

		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget"  id="target-1">
							<div class="widget-header">
								<i class="icon-list-alt"></i>
								<h3>입퇴원 요청 목록</h3>
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
	<!-- /main -->
</c:if>
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>