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
			, title: '건강검진 결과 등록'
			, text: '건강검진 결과를 파일로 등록합니다.'
		});
		
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->

<div class="main">
	<div class="main-inner">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="widget" id="widget-1">
						<div class="widget-header">
							<i class="icon-user"></i>
							<h3>등록 화면</h3>
						</div>
						<!-- /widget-header -->

						<div class="widget-content">
							<div class="tabbable">
								<ul class="nav nav-tabs">
									<li><a href="#formcontrols" data-toggle="tab">결과등록</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="formcontrols">
										<fieldset>
											<form action="<c:url value='/hospital/test/addCheckup'/>"
												method="post" enctype="multipart/form-data"
												class="form-horizontal">
												<input type="hidden" name="hoTestCode" required="required"
													value="${checkView.hoTestCode }"> <input
													type="hidden" name="hoTestRequestCode" required="required"
													value="${checkView.hoTestRequestCode }"> <input
													type="hidden" name="hoTestStateCode" value="3"
													required="required">
												<div class="control-group">
													<label class="control-label" for="username">검사명</label>
													<div class="controls">
														<input type="text" name="hoTestName" required="required"
															value="${checkView.hoTestName }">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->

												<div class="control-group">
													<label class="control-label" for="lastname">환자명</label>
													<div class="controls">
														<input type="text" name="hoPatientName"
															required="required" value="${checkView.hoPatientName}">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->
												<div class="control-group">
													<label class="control-label" for="lastname">파일등록</label>
													<div id="uploadFile">
														<div class="controls">
															<input type="file" name="uploadFile">
														</div>
													</div>
												</div>
												<div class="form-actions">
													<button id="submitBtn" type="submit"
														class="btn btn-primary">접수하기</button>
													<button class="btn btn-primary" type="reset">취소</button>
												</div>
												<!-- /form-actions -->
											</form>
										</fieldset>
									</div>
									<!-- /tab-pane -->
								</div>
								<!-- /tab-content -->
							</div>
							<!-- /tabbable -->
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

<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>
