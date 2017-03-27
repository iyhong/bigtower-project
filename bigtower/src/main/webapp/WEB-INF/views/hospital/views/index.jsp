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
			, text: '진료 통계를 보여줍니다./'
		});
		
		guidely.add ({
			attachTo: '#target-3'
			, anchor: 'top-right'
			, title: 'Guide Title'
			, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
		});
		
		guidely.add ({
			attachTo: '#target-4'
			, anchor: 'top-right'
			, title: 'Guide Title'
			, text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.'
		});
		
		guidely.init ({ welcome: true, startTrigger: false });
	});
	</script>
<!-- /사용자 메뉴얼 코드 시작 -->
<style>
<!--
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
-->
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

