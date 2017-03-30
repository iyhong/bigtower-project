<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp" %>

<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-left'
			, title: '나의 환자 조회'
			, text: '내(의사)가 진료한 모든 국민의 의료기록을 보여줍니다. 이 의료기록은 해당병원의 기록 뿐 아닌 타병원의 진료내역까지 보여줍니다.'
		});
		guidely.add ({
			attachTo: '#target-2'
			, anchor: 'top-right'
			, title: '진료'
			, text: '내(의사)가 진료한 모든 국민의 진료기록을 보여줍니다.'
		});
		guidely.add ({
			attachTo: '#target-3'
			, anchor: 'top-right'
			, title: '영상검사'
			, text: '내(의사)가 진료한 모든 국민의 영상검사기록을 보여줍니다. 영상검사시 찍었던 사진결과 역시 볼 수 있습니다.'
		});

		guidely.init ({ welcome: true, startTrigger: false });
	});
</script>
<style>


.widget {
    position: relative;
    clear: both;
    width: auto;
    margin-bottom: 2em;
    overflow: auto;
    margin: 0px 0px 100px 0px;
}

</style>
<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div id="target-1" class="widget ">
	      			
	      			<div class="widget-header">
	      				<i class="icon-user"></i>
	      				<h3>나의 환자 조회</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">
						
						
						
						<div class="tabbable">
						<ul class="nav nav-tabs">
						  <li class="active">
						    <a href="#treat" data-toggle="tab" id="target-2">진료</a>
						  </li>
						  <li>
						  	<a href="#diagnosis" data-toggle="tab">진단</a>
					  	  </li>
					  	  <li>
						  	<a href="#prescription" data-toggle="tab">처방</a>
					  	  </li>
					  	  <li>
						  	<a href="#surgery" data-toggle="tab">수술</a>
					  	  </li>
					  	  <li>
						  	<a href="#bloodtest" data-toggle="tab" id="target-3">혈액검사</a>
					  	  </li>
					  	  <li>
						  	<a href="#imagetest" data-toggle="tab">영상검사</a>
					  	  </li>
					  	  <li>
						  	<a href="#checkup" data-toggle="tab">건강검진</a>
					  	  </li>
					  	  <li>
						  	<a href="#vaccination" data-toggle="tab">예방접종</a>
					  	  </li>
					  	  
						</ul>
						
						<br>
						
							<div class="tab-content">
							
								<!-- 1.진료부분 -->
								<div class="tab-pane active" id="treat">
								<form id="edit-profile" class="form-horizontal">
									<fieldset>
										<!-- 내용 -->
										<%@ include file="/WEB-INF/views/hospital/views/government/treat/gov_listTreatResult.jsp" %>
										<!-- /내용 -->
									</fieldset>
								</form>
								</div>
								<!-- /진료부분 -->
								
								<!-- 2.진단부분 -->
								<div class="tab-pane" id="diagnosis">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/diagnosis/gov_listDiagnosisResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /진단부분 -->
								
								<!-- 3.처방부분 -->
								<div class="tab-pane" id="prescription">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/prescription/gov_listPrescriptionResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /처방부분 -->
								
								
<%-- 								<!-- 4.입퇴원부분 -->
								<div class="tab-pane" id="hospitalization">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
											입퇴원
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/hospitalization/gov_listHospitalizationResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /입퇴원부분 --> --%>
								
								
								<!-- 5.수술부분 -->
								<div class="tab-pane" id="surgery">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/surgery/gov_listSurgeryResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /수술부분 -->
								
								
								<!-- 6.혈액검사부분 -->
								<div class="tab-pane" id="bloodtest">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/bloodTest/gov_listBloodTestResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /혈액검사부분 -->
								
								
								<!-- 7.영상검사부분 -->
								<div class="tab-pane" id="imagetest">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/mediaTest/gov_listMediaTestResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /영상검사부분 -->
								
								
								<!-- 8.건강검진부분 -->
								<div class="tab-pane" id="checkup">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/checkup/gov_listCheckupResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /건강검진부분 -->
								
								
								<!-- 9.예방접종부분 -->
								<div class="tab-pane" id="vaccination">
									<form id="edit-profile2" class="form-vertical">
										<fieldset>
											<!-- 내용 -->
                                   			<%@ include file="/WEB-INF/views/hospital/views/government/vaccine/gov_listVaccineResult.jsp" %>
											<!-- /내용 -->
										</fieldset>
									</form>
								</div>
								<!-- /예방접종부분 -->
								
							</div>
						  
						  
						</div>
						
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->

<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp" %>
