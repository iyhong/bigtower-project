<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- 사용자 메뉴얼 코드 시작 -->
	<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
	<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
	
	<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-left'
			, title: '진료정보'
			, text: '환자의 기본정보를 보여주고, 진료내용과 질병명(진단명)은 반드시 입력해야 합니다.'
		});
		guidely.add ({
			attachTo: '#diseaseNameAdd'
			, anchor: 'top-right'
			, title: '진단 추가'
			, text: '추가 버튼을 클릭하면 진단(질병)을 추가할 수 있습니다.'
		});
		guidely.add ({
			attachTo: '#target-3'
			, anchor: 'top-right'
			, title: '검사요청'
			, text: '검사가 필요하다고 판단되면 클릭해서 박스를 열고, 요청할 검사 종류를 체크합니다.'
		});
		guidely.add ({
			attachTo: '#target-4'
			, anchor: 'top-right'
			, title: '입/퇴원 요청'
			, text: '입원이 필요하다고 판단되면 클릭해서 박스를 열고, 입원에 체크합니다.'
		});
		guidely.add ({
			attachTo: '#target-5'
			, anchor: 'top-right'
			, title: '수술 요청'
			, text: '수술이 필요하다고 판단되면 클릭해서 박스를 열고, 수술날짜와 수술명을 선택합니다.'
		});
		guidely.add ({
			attachTo: '#target-6'
			, anchor: 'top-right'
			, title: '예방접종 실시'
			, text: '예방접종을 할경우 클릭해서 박스를 열고, 예방접종 종류를 선택하고 날짜를 입력합니다.'
		});
		
		guidely.add ({
			attachTo: '#target-7'
			, anchor: 'top-right'
			, title: '처방전 작성'
			, text: '처방이 필요하다고 판단되면 처방할 약을 선택하고 투약량, 투약횟수, 투약일수 등을 입력합니다.'
		});
		guidely.add ({
			attachTo: '#medicineNameAdd'
			, anchor: 'top-right'
			, title: '처방추가 버튼'
			, text: '추가버튼을 클릭하여 다수의 약을 처방할수 있습니다.'
		});
		
		guidely.add ({
			attachTo: '#submitBtn'
			, anchor: 'top-right'
			, title: '진료 완료'
			, text: '진료 완료버튼을 클릭하면 입력한 진료정보들을 등록합니다.'
		});
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->

<style>

.widget {
	
	position: relative;
	clear: both;
	
	width: auto;
	
	margin-bottom: 2em;
		
	overflow: hidden;
	
	margin: 0px 0px 20px 0px;
}
</style>

<script type="text/javascript">
	$( document ).ready(function() {
		
		//질병 추가버튼 클릭시 이벤트
		$(document).on('click','#diseaseNameAdd',function(){
			var addSelect = $('#hiddenPrescription').html();
			$(this).parents('#prescription').append(addSelect);	
		});
		
		$(document).on('click','#diseaseNameRemove',function(){
			$(this).parent('.addDisease').remove();		
		});
		
		//약품 추가버튼 클릭시 이벤트
		$(document).on('click','#medicineNameAdd',function(){
			var addSelect = $('#hiddenMedicine').html();
			$(this).parents('#medicine').append(addSelect);	
		});
		
		$(document).on('click','#medicineNameRemove',function(){
			$(this).parent('.addMedicine').remove();		
		});
		
		// 제출버튼 클릭시(유효성검사)
		$("#submitBtn").click(function(){
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
			
			for(var i=0; i<$('.diseaseSelect').length-1;i++){
				let value = $('.diseaseSelect option:selected')[i].value;
				console.log(value);
				if(value==="0"){
					alert("질병코드를 선택하세요!")
					return;
				}
			}
			if($("#hoTreatmentContents").val()===""){
				alert("진료내용을 입력하세요!");
				return;
			//수술명을 선택하였거나, 수술예정일을 선택했을경우
			}if($("#hoOperationTypeCode option:selected").val()!=="0"||$("#hoOperationStartDate").val()!==""){
				if($("#hoOperationTypeCode option:selected").val()==="0"){
					alert("수술명을 선택하세요");
					return;
				}if($("#hoOperationStartDate").val()===""){
					alert("수술예정일을 선택하세요");
					return;

				//수술예정일을 선택했을경우 현재날짜랑 비교해서 이후날짜를 입력하도록 유도한다.
				}else{
					var nowDateJS = new Date();
					var nowDate = nowDateJS.getFullYear()+'-'+(nowDateJS.getMonth()+1)+'-'+nowDateJS.getDate();
					var hoOperationStartDate = $('#hoOperationStartDate').val();
					console.log('현재날짜 : '+nowDate+" 입력한날짜:"+hoOperationStartDate);
					var result = getDateDiff(nowDate, hoOperationStartDate);
					console.log('result:'+result);
				 	if(result>0){
						alert('수술예정일 이후로 날짜를 입력해주세요')
						return;
					}
				}
			//예방접종 종류를 선택하였거나, 예방접종일을 선택했을경우
			}if($("#hoVaccineTypeCode option:selected").val()!=="0"||$("#hoVaccineDate").val()!==""){
				if($("#hoVaccineTypeCode option:selected").val()==="0"){
					alert("예방접종 종류를 선택하세요");
					return;
				}if($("#hoVaccineDate").val()===""){
					alert("예방접종일을 선택하세요");
					return;
				//예방접종일을 선택했을경우 현재날짜랑 비교해서 이후날짜를 입력하도록 유도한다.
				}else{
					var nowDateJS = new Date();
					var nowDate = nowDateJS.getFullYear()+'-'+(nowDateJS.getMonth()+1)+'-'+nowDateJS.getDate();
					var hoVaccineDate = $('#hoVaccineDate').val();
					console.log('현재날짜 : '+nowDate+" 입력한날짜:"+hoVaccineDate);
					var result = getDateDiff(nowDate, hoVaccineDate);
					console.log('result:'+result);
				 	if(result>0){
						alert('수술예정일 이후로 날짜를 입력해주세요')
						return;
					}
				}
			
			//처방약을 추가 안할경우
			}if($('.hoMedicineCode option:selected').length<=2){
				let hoMedicineCode = $('.hoMedicineCode option:selected')[0].value;
				let hoPrescriptionDailydose = $('.hoPrescriptionDailydose')[0].value;
				let hoPrescriptionDailycount = $('.hoPrescriptionDailycount')[0].value;
				let hoPrescriptionTotalday = $('.hoPrescriptionTotalday')[0].value;
				let hoPrescriptionUsage = $('.hoPrescriptionUsage')[0].value;
//				console.log('약품명:'+hoMedicineCode);
//				console.log('일일투약량:'+hoPrescriptionDailydose);
//				console.log('일일투약횟수:'+hoPrescriptionDailycount);
//				console.log('총투약일수:'+hoPrescriptionTotalday);
//				console.log('용법:'+hoPrescriptionUsage);
				if(hoMedicineCode!=="0"){
					if(hoPrescriptionDailydose===""){
						alert("일일투약량을 입력해주세요");
						return;
					}
					if(hoPrescriptionDailycount===""){
						alert("일일투약횟수를 입력해주세요");
						return;
					}
					if(hoPrescriptionTotalday===""){
						alert("총투약일수를 입력해주세요");
						return;
					}
					if(hoPrescriptionUsage===""){
						alert("용법을 입력해주세요");
						return;
					}
				}
			//처방약을 추가한 경우(추가된 횟수만큼 반복한다)
			} else {
				for(var i=0; i<$('.hoMedicineCode').length-1;i++){
					let hoMedicineCode = $('.hoMedicineCode option:selected')[i].value;
					let hoPrescriptionDailydose = $('.hoPrescriptionDailydose')[i].value;
					let hoPrescriptionDailycount = $('.hoPrescriptionDailycount')[i].value;
					let hoPrescriptionTotalday = $('.hoPrescriptionTotalday')[i].value;
					let hoPrescriptionUsage = $('.hoPrescriptionUsage')[i].value;
					//console.log('약품명:'+hoMedicineCode);
					//console.log('일일투약량:'+hoPrescriptionDailydose);
					//console.log('일일투약횟수:'+hoPrescriptionDailycount);
					//console.log('총투약일수:'+hoPrescriptionTotalday);
					//console.log('용법:'+hoPrescriptionUsage);
					if(hoMedicineCode==="0"){
						alert("약품명을 선택하세요");
						return;
					}
					if(hoPrescriptionDailydose===""){
						alert("일일투약량을 입력해주세요");
						return;
					}
					if(hoPrescriptionDailycount===""){
						alert("일일투약횟수를 입력해주세요");
						return;
					}
					if(hoPrescriptionTotalday===""){
						alert("총투약일수를 입력해주세요");
						return;
					}
					if(hoPrescriptionUsage===""){
						alert("용법을 입력해주세요");
						return;
					}
				}
			}
			
			console.log("제출!!");
			$("#treatForm").submit();
		});
	});
</script>

<style>
<!-- 
#submitBtn {

align : right;
}
-->	
</style>
<div class="main">
  <div class="main-inner">
    <div class="container">
     <form id="treatForm" action="<c:url value='/hospital/treatView'/>" method="post" >
    	<div style="text-align: right">
        	<input id="submitBtn" type="button" value="진료 완료" >
        </div>
      <div class="row">
        <div class="span6">
          <div id="target-1" class="widget">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3> 진료 정보</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
           
                  <input type="hidden" value="${hoTreat.hoTreatmentCode}" name="hoTreatmentCode">
					
					<div class="control-group">											
						<div class="controls">
							<div>
								 의사명 : 
								<input class="span2" type="text" id="hoDoctorName" name="hoDoctorName" value="${hoTreat.hoDoctorName}" readonly="readonly">
							</div>
							<div>
								차트번호 : 
								<input class="span2" type="text" value="${hoTreat.hoChartCode}" readonly="readonly">	
							</div>
							<div>
								환자명 : 
								<input class="span4" type="text" value="${hoTreat.hoPatientName}" readonly="readonly">	
							</div>
							<div>
								진료과목 : 
								<input class="span4" type="text" value="${hoTreat.hoTreatSubjectName}" readonly="readonly">	
							</div>
							<!-- 질병 추가 -->
							<div class="control-group">
								<label class="control-label" for="username">질병 선택</label>
								<div id="prescription" class="controls">
					           		<div>
					            		<select class="diseaseSelect" name="diseaseSelect">
					            			<option value="0">질병명</option>
							           		<c:forEach items="${diseaseList}" var="diseaseList">
												<option value="${diseaseList.hoDiseaseCode}">${diseaseList.hoDiseaseCode}(${diseaseList.hoDiseaseKor})</option>
											</c:forEach>                           			
					            		</select>
					            		<button type="button" id="diseaseNameAdd">추가</button>
					           		</div>
					           	</div>
						           	
						        <!-- 질병 추가시 추가되는 폼 -->   	
					           	<div id="hiddenPrescription" style="display: none;" class="control-group">
					           		<div class="addDisease" class="controls">	
					            		<select class="diseaseSelect" name="diseaseSelect">
					            			<!-- +버튼 눌렀을 때 추가되는 selectBox 마찬가지로 for문으로 list값 가져와야함 -->
					            			<option value="0">질병명</option>
					            			<c:forEach items="${diseaseList}" var="diseaseList">
												<option value="${diseaseList.hoDiseaseCode}">${diseaseList.hoDiseaseCode}(${diseaseList.hoDiseaseKor})</option>
											</c:forEach>                           			
					            		</select>
					            		<button type="button" id="diseaseNameAdd">추가</button>
					            		<button type="button" id="diseaseNameRemove">삭제</button>        
					           		</div>
					           	</div>
					         </div>
					         <div>
								진료내용 : 
								<textarea style="max-width: 96%; width:96%;" id="hoTreatmentContents" rows="10" cols="50" name="hoTreatmentContents"></textarea>	
							</div>  	
						</div> <!-- /controls -->				
					</div> <!-- /control-group -->
                </div>
                <!-- /widget-content --> 
          </div>
          <!-- /widget 진료정보 -->
         </div>
         <!-- /span6 -->
         
        <div class="span6">
        	
         <div class="widget">
          
          	<div class="widget-header"> <i class="icon-bullhorn"></i>
              <h3>요청</h3>
            </div>
            <div class="widget-content">
          	<div class="control-group">
				
				<div class="controls">
				
	                 <!-- 검사요청 -->                      
					 <div id="target-3" class="accordion" id="accordion">
	                   <div class="accordion-group">
	                     <div class="accordion-heading">
	                       <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
	                        	 검사요청
	                       </a>
	                     </div>
	                     <div id="collapseOne" class="accordion-body collapse">
	                       <div class="accordion-inner">
	                        	<input type="checkbox" name="hoTestCode" value="1">혈액검사	
								<input type="checkbox" name="hoTestCode" value="2">영상검사
								<input type="checkbox" name="hoTestCode" value="3">건강검진
	                       </div>
	                     </div>
	                   </div>
	                 </div>
	                 <!-- 입퇴원요청 -->  
	                 <div id="target-4" class="accordion" id="accordion2">
	                   <div class="accordion-group">
	                     <div class="accordion-heading">
	                       <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
	                         	입/퇴원 요청
	                       </a>
	                     </div>
	                     <div id="collapseTwo" class="accordion-body collapse">
	                       <div class="accordion-inner">
					   			해당없음 <input type="radio" name="checkHospitalization" value="0" checked="checked">
								입원 <input type="radio" name="checkHospitalization" value="1">
	                       </div> <!-- accordion-inner -->
	                     </div><!-- accordion-body-->
	                   </div><!-- accordion-group -->
	                 </div><!-- accordion -->
	                 
	                  <!-- 수술요청 -->
	                 <div id="target-5" class="accordion" id="accordion3">
	                   <div class="accordion-group">
	                     <div class="accordion-heading">
	                       <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#collapseThree">
	                         	수술요청
	                       </a>
	                     </div>
	                     <div id="collapseThree" class="accordion-body collapse">
	                       <div class="accordion-inner">
					   			<div>
						   			수술명 :
									<select name="hoOperationTypeCode" id="hoOperationTypeCode">
										<option value="0">:::수술을 선택하시오:::</option>
										<c:forEach items="${operationList}" var="operationList">
											<option value="${operationList.hoOperationTypeCode}">${operationList.hoOperationTypeCode}(${operationList.hoOperationTypeName})</option>
										</c:forEach>
									</select>
								</div>
					   			<div>
						   			수술날짜 :
						   			<input type="date" name="hoOperationStartDate" id="hoOperationStartDate">
					   			</div>
	                       </div> <!-- accordion-inner -->
	                     </div><!-- accordion-body-->
	                   </div><!-- accordion-group -->
	                  </div><!-- accordion -->
	                  
	                  <!-- 입퇴원요청 -->  
	                 <div id="target-6" class="accordion" id="accordion4">
	                   <div class="accordion-group">
	                     <div class="accordion-heading">
	                       <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion4" href="#collapseFour">
	                         	예방접종 실시
	                       </a>
	                     </div>
	                     <div id="collapseFour" class="accordion-body collapse">
	                       <div class="accordion-inner">
					   			<div>
									예방접종 종류 : 
									<select name="hoVaccineTypeCode" id="hoVaccineTypeCode">
										<option value="0">:::예방 접종 종류를 선택하시오:::</option>
										<c:forEach items="${vaccineList}" var="vaccineList">
												<option value="${vaccineList.hoVaccineTypeCode}">${vaccineList.hoVaccineTypeName}</option>
										</c:forEach>
									</select>
								</div>
								<div>
									예방접종일 : 
									<input type="date" name="hoVaccineDate" id="hoVaccineDate">
								</div>
								
	                       </div> <!-- accordion-inner -->
	                     </div><!-- accordion-body-->
	                   </div><!-- accordion-group -->
	                 </div><!-- accordion -->
	                 
				</div> <!-- /controls	 -->
			  </div> <!-- /control-group  -->
            </div>
          </div>
          <!-- /widget -->
          
         <div id="target-7" class="widget">
          	<div class="widget-header"> <i class="icon-beaker"></i>
              <h3>처방전 작성</h3>
            </div>
            <div class="widget-content">
          		<div class="control-group">											
					<div class="controls">
						<div id="medicine">
			           		<div>
			           			약품명 : 
			            		<select class="hoMedicineCode" name="hoMedicineCode">
			            			<option value="0">약을 선택하시오</option>
					           		<c:forEach items="${medicineList}" var="medicineList">
										<option value="${medicineList.hoMedicineCode}">${medicineList.hoMedicineCode}(${medicineList.hoMedicineName})</option>
									</c:forEach>                           			
			            		</select>
			            		<button type="button" id="medicineNameAdd">추가</button>
			           		</div>
							<div>
								일일투약량 :
								<input class="hoPrescriptionDailydose" type="text" name="hoPrescriptionDailydose">mg/일
							</div>
							<div>
								일일투약횟수 :
								<input class="hoPrescriptionDailycount" type="text" name="hoPrescriptionDailycount">회/일
							</div>
							<div>
								총투약일수 :
								<input class="hoPrescriptionTotalday" type="text" name="hoPrescriptionTotalday">일
							</div>
							<div>
								용법 :
								<input class="hoPrescriptionUsage" type="text" name="hoPrescriptionUsage">
							</div>
			           	</div> <!-- /medicine -->
			           	
			           	<div id="hiddenMedicine" style="display: none;">
			           		<div class="addMedicine">
			           			약품명 :
			            		<select class="hoMedicineCode" name="hoMedicineCode">
			            			<!-- +버튼 눌렀을 때 추가되는 selectBox 마찬가지로 for문으로 list값 가져와야함 -->
			            			<option value="0">약품명</option>
			            			<c:forEach items="${medicineList}" var="medicineList">
										<option value="${medicineList.hoMedicineCode}">${medicineList.hoMedicineCode}(${medicineList.hoMedicineName})</option>
									</c:forEach>                          			
			            		</select>
			            		<button type="button" id="medicineNameAdd">추가</button>
			            		<button type="button" id="medicineNameRemove">삭제</button>        
								<div>
									일일투약량 :
									<input class="hoPrescriptionDailydose" type="text" name="hoPrescriptionDailydose">mg/일
								</div>
								<div>
									일일투약횟수 :
									<input class="hoPrescriptionDailycount" type="text" name="hoPrescriptionDailycount">회/일
								</div>
								<div>
									총투약일수 :
									<input class="hoPrescriptionTotalday" type="text" name="hoPrescriptionTotalday">일
								</div>
								<div>
									용법 :
									<input class="hoPrescriptionUsage" type="text" name="hoPrescriptionUsage">
								</div>
			           		</div>
           				</div><!-- /hiddenMedicine -->
					</div> <!-- /controls -->				
				</div> <!-- /control-group -->
           
            </div>
          </div>
          <!-- /widget -->
        
       
          
         
        </div>
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
      
      </form> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp" %>
