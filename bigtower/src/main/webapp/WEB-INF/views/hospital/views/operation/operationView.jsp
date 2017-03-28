<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
<script>
	$(document).ready(function() {
		function getDateDiff(date1,date2) {
		    console.log('getDateDiff 함수실행');
		    var arrDate1 = date1.split("-");
		    var getDate1 = new Date(parseInt(arrDate1[0]),parseInt(arrDate1[1])-1,parseInt(arrDate1[2]));
		    console.log('getDate1 : '+getDate1);
		    var arrDate2 = date2.split("-");
		    var getDate2 = new Date(parseInt(arrDate2[0]),parseInt(arrDate2[1])-1,parseInt(arrDate2[2]));
		    console.log('getDate2 : '+getDate2);
		    var getDiffTime = getDate1.getTime() - getDate2.getTime();
		    return Math.floor(getDiffTime / (1000 * 60 * 60 * 24));
		  }
		
		$(function () {
			guidely.add ({
				attachTo: '#target-1'
				, anchor: 'top-right'
				, title: '수술일지작성'
				, text: '수술이 시작되고 수술과정의 결과를 수술일지란에 기입합니다.'
			});

			guidely.init ({ welcome: true, startTrigger: false });
		});
		$("#submitBtn").click(function() {
			if($("#hoOperationDiary").val()===""){
				alert("수술일지를 작성해주세요");
				return;
			}
			
			if($("#hoOperationEndDate").val()===""){
				alert("수술종료시간을 입력하세요");
				return;
			}
			
			else{
				var startDate = $('#hoOperationStartDate').val();
				var endDate = $('#hoOperationEndDate').val();
				console.log('시작일 : '+startDate+" 종료일:"+endDate);
				var result = getDateDiff(startDate, endDate);
				console.log('result:'+result);
			 	if(result>0){
					alert('수술예정일 이후로 날짜를 입력해주세요')
					return;
				}else{
					$("#operationForm").submit();					
				}
					
			}
			
		});

	});
</script>
<div class="main">
	<div class="main-inner">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="widget" id="target-1">
						<div class="widget-header">
							<i class="icon-user"></i>
							<h3>등록 화면</h3>
						</div>
						<!-- /widget-header -->
						<div class="widget-content">
							<div class="tabbable">
								<ul class="nav nav-tabs">

									<li><a href="#formcontrols" data-toggle="tab">수술 등록</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="formcontrols">
										<fieldset>
											<form action="<c:url value='/hospital/operationView'/>"
												method="post" id="operationForm" class="form-horizontal">
												<input type="hidden" value="${hoOperation.hoOperationCode}"
													name="hoOperationCode">
												<div class="control-group">
													<label class="control-label" for="username">환자명 : </label>
													<div class="controls">
														<input type="text" class="span6 disabled"
															value="${hoOperation.hoPatientName}" readonly="readonly">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->

												<div class="control-group">
													<label class="control-label" for="username">수술명 : </label>
													<div class="controls">
														<input type="text" class="span6 disabled"
															value="${hoOperation.hoOperationTypeName}"
															readonly="readonly">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->


												<div class="control-group">
													<label class="control-label" for="lastname">수술시작일 :
													</label>
													<div class="controls">
														<input type="text" class="span6 disabled"
															value="${hoOperation.hoOperationStartDate}"
															name="hoOperationStartDate" id="hoOperationStartDate"
															readonly="readonly">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->


												<div class="control-group">
													<label class="control-label" for="email">수술종료일 : </label>
													<div class="controls">
														<input type="date"
															value="${hoOperation.hoOperationEndDate}"
															name="hoOperationEndDate" id="hoOperationEndDate">
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->


												<div class="control-group">
													<label class="control-label" for="password2">수술일지 :
													</label>
													<div class="controls">
														<textarea id ="hoOperationDiary" class="form-control" cols="100" rows="10"
															name="hoOperationDiary"
															style="max-width: 57%; width: 57%;">${hoOperation.hoOperationDiary}</textarea>
													</div>
													<!-- /controls -->
												</div>
												<!-- /control-group -->

												<div class="form-actions">
													<button id="submitBtn" type="button"
														class="btn btn-primary">접수하기</button>
													<button class="btn" type="reset">취소</button>
												</div>
												<!-- /form-actions -->
											</form>
										</fieldset>
									</div>
								</div>
							</div>
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
<!-- <script>
		var Today = new Date();
		document.getElementById('hoOperationStartDate').valueAsDate = ${hoOperation.hoOperationStartDate};
	</script> -->
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp"%>