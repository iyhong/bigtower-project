<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/hospital/views/module/top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 사용자 메뉴얼 코드 시작 -->
	<script src="<c:url value="/resources/bootstrap/js/guidely/guidely.min.js"/>"></script>
	<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
	
	<script>
	$(function () {
		guidely.add ({
			attachTo: '#target-1'
			, anchor: 'top-right'
			, title: '방문자 통계'
			, text: '우리병원에 년간/월간/일일 방문자 통계입니다.'
		});
		
		guidely.add ({
			attachTo: '#target-2'
			, anchor: 'top-right'
			, title: '진료 통계'
			, text: '우리병원에서 년간/월간/일일별 진료한 진료과목 상위3개를 보여줍니다. 예)순위:진료과목(횟수)'
		});
		
		guidely.add ({
			attachTo: '#target-3'
			, anchor: 'top-right'
			, title: '질병 통계'
			, text: '우리병원에서 년간/월간/주간별 진단한 질병 상위3개를 보여줍니다. 예)순위:질병명(횟수)'
		});
		
		guidely.add ({
			attachTo: '#target-4'
			, anchor: 'top-right'
			, title: '약품 통계'
			, text: '우리병원에 년간/월간/주간별 처방한 약품 상위3개를 보여줍니다. 예)순위:약품명(횟수)'
		});
		
		
		guidely.add ({
			attachTo: '#menu-1'
			, anchor: 'top-right'
			, title: '접수 메뉴'
			, text: '환자를 등록하고 접수합니다.'
		});
		guidely.add ({
			attachTo: '#menu-2'
			, anchor: 'top-right'
			, title: '진료 메뉴'
			, text: '의사만 사용가능, 진료대기자를 확인하고 환자를 진료하며 진단, 처방, 검사요청, 입퇴원요청, 수술요청, 예방접종요청등을 합니다.'
		}); 
		guidely.add ({
			attachTo: '#menu-3'
			, anchor: 'top-right'
			, title: '혈액검사 메뉴'
			, text: '혈액을 체취하고, 검사결과를 혈소판, 혈당 수치와 이미지파일을 등록합니다.'
		});
		guidely.add ({
			attachTo: '#menu-4'
			, anchor: 'top-right'
			, title: '영상검사 메뉴'
			, text: '영상검사를 완료하고, 결과를 이미지파일로 등록합니다.'
		});
		guidely.add ({
			attachTo: '#menu-5'
			, anchor: 'top-right'
			, title: '건강검진 메뉴'
			, text: '건강검진 검사를 완료하고, 결과를 이미지파일로 등록합니다.'
		});
		guidely.add ({
			attachTo: '#menu-6'
			, anchor: 'top-right'
			, title: '입 퇴원 메뉴'
			, text: '환자의 입원 및 퇴원처리를 합니다.'
		});
		guidely.add ({
			attachTo: '#menu-7'
			, anchor: 'top-right'
			, title: '수술 메뉴'
			, text: '수술종료후 수술일지를 등록합니다.'
		});
		guidely.add ({
			attachTo: '#menu-8'
			, anchor: 'top-right'
			, title: '수납 메뉴'
			, text: '수납처리를 통해 병원 프로세스를 마무리합니다.'
		});
		guidely.add ({
			attachTo: '#menu-9'
			, anchor: 'top-right'
			, title: '환자 기록 메뉴'
			, text: '의사만 사용가능, 정부에 저장된 환자의 기록을 조회할수 있습니다.'
		});
		guidely.add ({
			attachTo: '#menu-10'
			, anchor: 'top-right'
			, title: '정부 RESTful API'
			, text: '정부에서 제공하는 RESTful API 명세서를 볼수있습니다.'
		});
		guidely.add ({
			attachTo: '#loginfo'
			, anchor: 'top-right'
			, title: '로그인 정보'
			, text: '로그인 정보를 확인하고, 로그아웃을 할수 있습니다.'
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

.mainSub {
    border-bottom: 1px solid #000;
}

@media (max-width: 1000px) {
	.main {
	    border-bottom: 1px solid #000;
	}
	img {
		width: auto;
	}
}

</style>


<div class="mainSub">
	<div class="main-inner">
		<div class="container">
			<div class="row">
				<div class="span6">
					<div id="target-1" class="widget widget-nopad">
			            <div class="widget-header"> <i class="icon-list-alt"></i>
			              <h3> 방문자 통계</h3>
			            </div>
			            <!-- /widget-header -->
			            <div class="widget-content">
			              <div class="widget big-stats-container">
			                <div class="widget-content">
			                  <div id="big_stats" class="cf">
			                    <div class="stat"> 
			                    	<i>일일 방문자</i> 
			                    	
			                    	<span class="value">${resultMap.dayVisitPeople}</span> 
			                    </div>
			                    <!-- .stat -->
			                    
			                    <div class="stat"> 
			                    	<i>월간 방문자</i> 
			                    	<span class="value">${resultMap.monthVisitPeople}</span>
			                    </div>
			                    <!-- .stat -->
			                    
			                    <div class="stat">
			                    	<i>연간 방문자</i>
			                    	<span class="value">${resultMap.yearVisitPeople}</span>
			                    </div>
			                    <!-- .stat -->
			                    
			                   
			                  </div>
			                  <!-- /big_stats --> 
			                </div>
			                <!-- /widget-content --> 
			                
			              </div>
			            </div>
			          </div>
			          <!-- /widget -->
			          
			          <div id="target-2" class="widget widget-nopad">
			            <div class="widget-header"> <i class="icon-list-alt"></i>
			              <h3>진료 통계</h3>
			            </div>
			            <!-- /widget-header -->
			            <div class="widget-content">
			              <div class="widget big-stats-container">
			                <div class="widget-content">
			                  <div id="big_stats" class="cf">
			                  		
			                    	<div class="stat"> 
				                    	<i>day</i> 
				                    	<c:if test="${empty resultMap.dayTreatVisit}">
					                  		<i>금일 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.dayTreatVisit ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="dayTreatVisit" items="${resultMap.dayTreatVisit}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${dayTreatVisit.hoTreatSubjectName}  (${dayTreatVisit.hoTreatsubjectCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                    	
			                    	<div class="stat"> 
				                    	<i>Month</i> 
				                    	<c:if test="${empty resultMap.monthTreatVisit}">
					                  		<i>금월 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.monthTreatVisit ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="monthTreatVisit" items="${resultMap.monthTreatVisit}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${monthTreatVisit.hoTreatSubjectName}  (${monthTreatVisit.hoTreatsubjectCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                  		  
								    <div class="stat"> 
				                    	<i>year</i> 
				                    	<c:if test="${empty resultMap.yearTreatVisit}">
					                  		<i>금년 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.yearTreatVisit ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="yearTreatVisit" items="${resultMap.yearTreatVisit}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${yearTreatVisit.hoTreatSubjectName}  (${yearTreatVisit.hoTreatsubjectCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
								   
								
			                    <!-- .stat -->
			                  </div>
			                  <!-- /big_stats -->
			                  
			                </div>
			                <!-- /widget-content --> 
			                
			              </div>
			            </div>
			          </div>
			          <!-- /widget -->
			          
			          <div id="target-3" class="widget widget-nopad">
			            <div class="widget-header"> <i class="icon-list-alt"></i>
			              <h3> 질병 통계</h3>
			            </div>
			            <!-- /widget-header -->
			            <div class="widget-content">
			              <div class="widget big-stats-container">
			                <div class="widget-content">
			                  
			                  <div id="big_stats" class="cf">
			                    	<div class="stat"> 
				                    	<i>week</i> 
				                    	<c:if test="${empty resultMap.weekDisease}">
					                  		<i>금주 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.weekDisease ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="weekDisease" items="${resultMap.weekDisease}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${weekDisease.hoDiseaseName}  (${weekDisease.hoDiseaseCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                    	
			                    	<div class="stat"> 
				                    	<i>Month</i> 
				                    	<c:if test="${empty resultMap.monthDisease}">
					                  		<i>금월 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.monthDisease ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="monthDisease" items="${resultMap.monthDisease}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${monthDisease.hoDiseaseName}  (${monthDisease.hoDiseaseCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                  		  
								    <div class="stat"> 
				                    	<i>year</i> 
				                    	<c:if test="${empty resultMap.yearDisease}">
					                  		<i>금년 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.yearDisease ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="yearDisease" items="${resultMap.yearDisease}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${yearDisease.hoDiseaseName}  (${yearDisease.hoDiseaseCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                    <!-- .stat -->
			                  </div>
			                  <!-- /big_stats -->
			                  
			                </div>
			                <!-- /widget-content --> 
			                
			              </div>
			            </div>
			          </div>
			          <!-- /widget -->
			          
			          <div id="target-4" class="widget widget-nopad">
			            <div class="widget-header"> <i class="icon-list-alt"></i>
			              <h3> 약품 통계</h3>
			            </div>
			            <!-- /widget-header -->
			            <div class="widget-content">
			              <div class="widget big-stats-container">
			                <div class="widget-content">
			                  <div id="big_stats" class="cf">
			                    	<div class="stat"> 
				                    	<i>week</i> 
				                    	<c:if test="${empty resultMap.weekMedicine}">
					                  		<i>금주 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.weekMedicine ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="weekMedicine" items="${resultMap.weekMedicine}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${weekMedicine.hoMedicineName}  (${weekMedicine.hoMedicineCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                    	
			                    	<div class="stat"> 
				                    	<i>Month</i> 
				                    	<c:if test="${empty resultMap.monthMedicine}">
					                  		<i>금월 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.monthMedicine ne null}">
					                  		
											<div class="stat"> 
												<c:forEach var="monthMedicine" items="${resultMap.monthMedicine}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${monthMedicine.hoMedicineName}  (${monthMedicine.hoMedicineCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                  		  
								    <div class="stat"> 
				                    	<i>year</i> 
				                    	<c:if test="${empty resultMap.yearMedicine}">
					                  		<i>금년 진료가 없습니다.</i>
									    </c:if>
				                    	<c:if test="${resultMap.yearMedicine ne null}">
				                  		
											<div class="stat"> 
												<c:forEach var="yearMedicine" items="${resultMap.yearMedicine}" varStatus ="status">
						                    		<span>${status.index+1}위 : ${yearMedicine.hoMedicineName}  (${yearMedicine.hoMedicineCount})</span><br> 
						                    	</c:forEach>
						                    </div>
											
										</c:if>
				                    </div>
			                    	<!-- .stat -->
			                    <!-- .stat -->
			                  </div>
			                  <!-- /big_stats -->
			                </div>
			                <!-- /widget-content --> 
			                
			              </div>
			            </div>
			          </div>
			          <!-- /widget -->
			          
				</div><!-- /span6 -->
				<div class="span6">
					<img src="<c:url value='/resources/bootstrap/img/img-1.png'/>" class="img"/>
				</div><!-- /span6 -->
			</div><!-- /row -->
		</div><!-- /container -->
	</div><!-- /main-inner -->
</div><!-- /mainSub -->

<%@ include file="/WEB-INF/views/hospital/views/module/bottom.jsp" %>

