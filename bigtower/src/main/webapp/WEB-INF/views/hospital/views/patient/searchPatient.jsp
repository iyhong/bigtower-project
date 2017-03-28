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
			, title: '환자 조회'
			, text: '병원 DB에서 등록된 주민번호가 있는지 확인합니다. 만약 없다면 환자등록 페이지로 넘어가고, 있다면 접수등록 페이지로 넘어갑니다.'
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
					<div class="widget ">
						<div class="widget-header">
							<i class="icon-user"></i>
							<h3>환자 조회</h3>
						</div>
						<!-- /widget-header -->

						<div class="widget-content">



							<div  id="target-1" class="tabbable">
								<ul class="nav nav-tabs">
									<li><a href="#formcontrols" data-toggle="tab">등록환자 조회</a>
									</li>
								</ul>

								<br>

								<div class="tab-content">
									<div class="tab-pane active" id="formcontrols">
										<form action="<c:url value='/hospital/searchPatient'/>"
											id="edit-profile" class="form-horizontal" method="post">
											<fieldset>

												<div class="control-group">
													<label class="control-label" for="username">환자명</label>
													<div class="controls">
														<input type="text" class="span6 disabled"
															name="hoPatientName" value="도우너">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->

												<div class="control-group">
													<label class="control-label" for="firstname">주민번호</label>
													<div class="controls">
														<input type="text" class="span6" id="hocitizenId"
															name="hocitizenId" value="900101-1000001">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->

												<div class="form-actions">
													<button type="submit" class="btn btn-primary">조회</button>
													<button class="btn" type="reset">취소</button>
												</div>
												<!-- /form-actions -->
											</fieldset>
										</form>
									</div>
								</div>
							</div>
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
<!-- /main -->
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>
