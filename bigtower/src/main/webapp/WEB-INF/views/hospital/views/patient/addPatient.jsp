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
			, title: '환자 등록'
			, text: '환자를 등록하는 화면입니다. 모든 빈칸을 작성하셔야 합니다.'
		});
		guidely.add ({
			attachTo: '#checkBtn'
			, anchor: 'top-right'
			, title: '주민번호, 이름 조회'
			, text: '정부에 저장되어있는 국민정보(주민번호, 이름)와 일치여부를 확인합니다.'
		});
		guidely.add ({
			attachTo: '#target-3'
			, anchor: 'top-right'
			, title: '우편번호 찾기'
			, text: '다음에서 제공하는 우편번호 찾기 API를 활용하여 주소를 검색합니다.'
		});
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->
<script>
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var fullAddr = ''; // 최종 주소 변수
	            var extraAddr = ''; // 조합형 주소 변수
	
	            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                fullAddr = data.roadAddress;
	
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                fullAddr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	            if(data.userSelectedType === 'R'){
	                //법정동명이 있을 경우 추가한다.
	                if(data.bname !== ''){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있을 경우 추가한다.
	                if(data.buildingName !== ''){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('hoZipCode').value = data.zonecode; //5자리 새우편번호 사용
	            document.getElementById('hoPatientAddress').value = fullAddr;
	
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById('hoPatientDetailAddress').focus();
	        }
	    }).open();
	}
	
	$( document ).ready(function() {
    	function getContextPath() {
    		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
    	};
    	

    	

	    //ajax실행
    	$("#checkBtn").bind("click",function(){
    		if($('#hoCitizenId').val()==""){
    			alert('주민등록번호를 입력하세요');
           		$("#hoCitizenId").focus();
           		return false;
    		}
    		console.log('getContextPath:'+getContextPath());
    		console.log('location.host:'+location.host);
    		console.log('location.href:'+location.href);
    		console.log('파라미터의 값 : '+$('#hoCitizenId').val());
    	    $.ajax({
    	        url : getContextPath()+"/government/checkCitizenId",
    	        type: "post",
    	        data : {
    	        		"citizenId" : $("#hoCitizenId").val(),
    	        		"citizenName" : $("#hoCitizenName").val(),
    	        		},
    	        success : function(data){
    	            var checkResult = data;
    	            console.log('checkResult : '+checkResult);
    	        	if(checkResult === 'nameIncorrect'){
    	            	alert("이름을 올바르게 입력하세요");
    	            	//$("#hoCitizenId").val('');
    	                $("#hoCitizenName").focus();
    	            	return;
    	            }
    	        	if(checkResult === 'idIncorrect'){
    	            	alert("주민번호를 올바르게 입력하세요");
    	            	//$("#hoCitizenId").val('');
    	                $("#hoCitizenId").focus();
    	            	return;
    	            }
    	        	if(checkResult === 'allCorrect'){
    	                alert("사용 가능합니다.");
   	            		$("#hoPatientPhone").focus();
   	            		return;
    	            }
    	        }
    	    });
    	});
	    
	    $("#submitBtn").click(function(){
	    	
	    	console.log("클릭이벤트 발생");
	    	if($("#hoCitizenId").val()===""){
	    		alert('주민번호를 입력해주세요');
	    		$("#hoCitizenId").focus();

	    		return;
	    	}
	    	if($("#hoCitizenName").val()===""){
	    		alert('이름을 입력해주세요');
	    		$("#hoCitizenName").focus();

	    		return;
	    	}
	    	if($("#hoPatientPhone").val()===""){
	    		alert('전화번호를 입력해주세요');
	    		$("#hoPatientPhone").focus();
	    		return;
	    	}
	    	if($("#hoZipCode").val()===""){
	    		alert('우편번호를 입력해주세요');
	    		$("#hoZipCode").focus();
	    		return;
	    	}
	    	if($("#hoPatientAddress").val()===""){
	    		alert('주소를 입력해주세요');
	    		$("#hoPatientAddress").focus();
	    		return;
	    	}
	    	if($("#hoPatientDetailAddress").val()===""){
	    		alert('상세주소를 입력해주세요');
	    		$("#hoPatientDetailAddress").focus();
	    		return;
	    	}
	    	console.log("제출!");
	    	$("#addPatientForm").submit();
	    	
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
						  
						  <li><a href="#formcontrols" data-toggle="tab">환자 등록</a></li>
						</ul>
						
							<div class="tab-content">
								<div class="tab-pane active" id="formcontrols">
								<form action="<c:url value='/hospital/addPatient'/>" method="post" id="edit-profile" class="form-horizontal">
									<fieldset>
										
										<div class="control-group">											
											<label class="control-label" for="username">주민번호</label>
											<div class="controls">
												<input type="text" name="hoCitizenId" class="span4" id="hoCitizenId" value="${hoCitizenId}">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="lastname">환자명</label>
											<div class="controls">
												<input type="text" class="span4" name="hoPatientName" id="hoCitizenName" value="${hoPatientName}" >
												<button class="btn" type="button" id="checkBtn">주민번호,이름 확인</button>
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="email">연락처</label>
											<div class="controls">
												<input type="text" class="span4" name="hoPatientPhone" id="email" value="010-1234-5678">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="password2">우편번호</label>
											<div class="controls">
												<input type="text" class="span4" name="hoZipCode" id="hoZipCode">
												<input id="target-3" type="button" class="btn" onClick="sample6_execDaumPostcode()" value="우편번호 찾기">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="control-group">											
											<label class="control-label" for="password1">주소</label>
											<div class="controls">
												<input type="text" class="span4" name="hoPatientAddress" id="hoPatientAddress" >
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										<div class="control-group">											
											<label class="control-label" for="password1">상세주소</label>
											<div class="controls">
												<input type="text" class="span4" id="hoPatientDetailAddress" name="hoPatientDetailAddress">
											</div> <!-- /controls -->				
										</div> <!-- /control-group -->
										
										
										<div class="form-actions">
											<button id="submitBtn" type="button" class="btn btn-primary">등록하기</button> 
											<button class="btn" type="reset">취소</button>
										</div> <!-- /form-actions -->
									</fieldset>
								</form>
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
