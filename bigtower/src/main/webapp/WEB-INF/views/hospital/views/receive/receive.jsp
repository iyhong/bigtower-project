<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 사용자 메뉴얼 코드 시작 -->
	<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
	<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
	
	<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-left'
			, title: '접수 등록'
			, text: '진료를 접수하는 화면입니다. 접수목적과 진료과목을 반드시 선택하셔야 합니다.'
		});
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->
</head>
<script>
	$( document ).ready(function() {
		$("#hoReceivePurpose").focus();
		
		$("#submitBtn").click(function(){
			if($("#hoReceivePurpose").val()===""){
				alert("접수목적을 입력해주세요");
				$("#hoReceivePurpose").focus();
				return;
			}
			if($("#hoTreatSubjectCode option:selected").val()===""){
				alert("진료과목을 선택해주세요");
				return;
			}
			$("#receiveForm").submit();
		});
	});
</script>

<div class="main">
	
<div class="main-inner">

    <div class="container">

      <div class="row">
      	
      	<div class="span12">      		
      		
      		<div class="widget ">
      			
      			<div class="widget-header">
      				<i class="icon-user"></i>
      				<h3>등록 화면</h3>
  				</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<div id="target-1" class="tabbable">
						<ul class="nav nav-tabs">
						  <li class="active">
						  	<a href="#formcontrols" data-toggle="tab">환자 접수</a>
						  </li>
						  <!-- <li><a href="#jscontrols" data-toggle="tab">JS Controls</a></li> -->
						</ul>
						
							<div class="tab-content">
								<div class="tab-pane active" id="formcontrols">
									<fieldset>
									
									<form action="<c:url value='/hospital/receive'/>" method="post" id="receiveForm" class="form-horizontal">
										<input id="hoPatientCode" type="hidden" name="hoPatientCode" value="${hoPatientCode}">
										<div class="control-group">											
											<label class="control-label" for="username">주민번호</label>
											<div class="controls">
												<input id="hoCitizenIdSearch" class="span4" type="text" value="${hoCitizenId}" placeholder="주민번호" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="username">병원코드</label>
											<div class="controls">
												<input type="text" name="hoHospitalCode" class="span4" id="hoHospitalCode" value="${HOSPITALCODE}" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="lastname">환자명</label>
											<div class="controls">
												<input type="text" class="span4" name="hoPatientName" id="hoPatientName" value="${hoPatientName}" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="email">전화번호</label>
											<div class="controls">
												<input type="text" class="span4" name="hoPatientPhone" id="hoPatientPhone" value="${hoPatientPhone}" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="password2">우편번호</label>
											<div class="controls">
												<input type="text" class="span4" name="hoZipCode" id="hoZipCode" value="${hoZipCode}" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="password1">주소</label>
											<div class="controls">
												<input type="text" class="span4" name="hoPatientAddress" id="hoPatientAddress" value="${hoPatientAddress} ${hoPatientDetailAddress}" readonly="readonly">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="password1">접수목적</label>
											<div class="controls">
												<input type="text" class="span4" id="hoReceivePurpose" name="hoReceivePurpose" value="감기몸살">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="password1">진료과목</label>
											<div class="controls">
												<select id="hoTreatSubjectCode" name="hoTreatSubjectCode">
													<option value="">:::선택하세요:::</option>
													<c:forEach items="${treatSubjectList}" var="treatSubjectList">
														<option value="${treatSubjectList.hoTreatSubjectCode}">${treatSubjectList.hoTreatSubjectName}</option>
													</c:forEach>
												</select>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="form-actions">
											<button id="submitBtn" type="submit" class="btn btn-primary">접수하기</button> 
											<button class="btn" type="reset">취소</button>
										</div> <!-- /form-actions -->
									</form>
								  </fieldset>
								
								</div>
								
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
