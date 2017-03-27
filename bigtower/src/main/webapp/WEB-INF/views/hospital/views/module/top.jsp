<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>의료정보 통합관리 시스템</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css"/>" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	        rel="stylesheet">
	<link href="<c:url value="/resources/bootstrap/css/font-awesome.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/bootstrap/css/style.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/bootstrap/css/pages/dashboard.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/bootstrap/css/style.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap/js/guidely/guidely.css"/>" rel="stylesheet"> 
	<script src="<c:url value="/resources/bootstrap/js/jquery-1.7.2.min.js"/>"></script> 
	<script src="<c:url value="/resources/bootstrap/js/excanvas.min.js"/>"></script> 
	<script src="<c:url value="/resources/bootstrap/js/chart.min.js"/>" type="text/javascript"></script> 
	<script src="<c:url value="/resources/bootstrap/js/bootstrap.js"/>"></script>
	<script language="javascript" type="text/javascript" src="<c:url value="/resources/bootstrap/js/full-calendar/fullcalendar.min.js"/>"></script>
	<script src="<c:url value="/resources/bootstrap/js/base.js"/>"></script>
</head>
<html>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
    	<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="<c:url value="/hospital/"/>">Medical Information Cloud System </a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
          <li class="dropdown">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
          		<i class="icon-user"></i> ${HOSPITALNAME} ${STAFFLEVELNAME} ${HOSTAFFNAME} <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="<c:url value="/hospital/logout"/>">Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
    
      <ul class="mainnav">
      
		<!-- 메뉴 1 -->
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-list"></i><span>접수</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/hospital/searchPatient'/>">접수등록</a></li>
            <li><a href="<c:url value='/hospital/receiveList'/>">접수목록</a></li>
          </ul>
        </li>
		<!-- /메뉴 1 -->

		<!-- 진료는 의사만 -->		
   	    <c:if test="${STAFFLEVELCODE==1}">
			<!-- 메뉴 2 -->
	        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-pencil"></i><span>진료</span> <b class="caret"></b></a>
	          <ul class="dropdown-menu">
	            <li><a href="<c:url value='/hospital/treatList'/>">진료목록</a></li>
	          </ul>
	        </li>
			<!-- /메뉴 2 -->
        </c:if>
        
		
		<!-- 메뉴3 -->
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-tint"></i><span>혈액검사</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/hospital/test/listBloodTest'/>">검사 실시</a></li>
            <li><a href="<c:url value='/hospital/test/listBloodWait'/>">결과 등록</a></li>
            <%-- <li><a href="<c:url value='/hospital/test/listBloodTestComplete'/>">검사 완료</a></li> --%>
          </ul>
        </li>
        
		<!-- /메뉴 3 -->
				
		<!-- 메뉴4 -->
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-facetime-video"></i><span>영상검사</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/hospital/test/listMediaTest'/>">검사 실시</a></li>
            <li><a href="<c:url value='/hospital/test/listMediaWait'/>">결과 등록</a></li>
            <%-- <li><a href="<c:url value='/hospital/test/listMediaComplete'/>">검사 완료</a></li> --%>
          </ul>
        </li>
		<!-- /메뉴 4 -->
						
		<!-- 메뉴5 -->
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-bar-chart"></i><span>건강검진</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/hospital/test/listCheckup'/>">검진 실시</a></li>
            <li><a href="<c:url value='/hospital/test/listCheckupWait'/>">결과 등록</a></li>
            <%-- <li><a href="<c:url value='/hospital/test/listCheckupComplete'/>">검사 완료</a></li> --%>
          </ul>
        </li>
		<!-- /메뉴 5 -->
        
		<!-- 메뉴6 -->
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-calendar"></i><span>입 퇴원</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/hospital/hospitalizationRequestList'/>">입원</a></li>
            <li><a href="<c:url value='/hospital/hospitalizationList'/>">퇴원</a></li>
          </ul>
        </li>
		<!-- /메뉴 6 -->
		
		<!-- 메뉴7 -->
        <li><a href="<c:url value='/hospital/operationList'/>"><i class="icon-cut"></i><span>수술</span> </a> </li>
		<!-- /메뉴 7 -->
		
		<!-- 메뉴8 -->
        <li><a href="<c:url value='/hospital/payList'/>"><i class="icon-money"></i><span>수납</span> </a> </li>
		<!-- /메뉴 8 -->
		
 	    <c:if test="${STAFFLEVELCODE==1}">
			<!-- 메뉴9 -->
	        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-search"></i><span>환자 기록</span> <b class="caret"></b></a>
	          <ul class="dropdown-menu">
	            <li><a href="<c:url value='/government/searchTreatbyCitizenId'/>">환자 조회</a></li>
	            <li><a href="<c:url value='/government/searchResultByDoctorId'/>">내 환자 목록</a></li>
	          </ul>
	        </li>
			<!-- /메뉴 9 -->
		</c:if>
		
		<c:if test="${STAFFLEVELCODE==1}">
			<!-- 메뉴10 -->
	        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-save"></i><span>정부 API</span> <b class="caret"></b></a>
	          <ul class="dropdown-menu">
	            <li><a href="<c:url value='/hospital/viewGovernmentInfo'/>">정부OPEN API </a></li>
	          </ul>
	        </li>
			<!-- /메뉴 10 -->
		</c:if>
			
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<!-- /subnavbar -->