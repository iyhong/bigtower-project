<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>����˻� �����ȸ</h1>
	<!-- MediaTestResult�� ��� -->
	<form action="<c:url value='/government/getOneImageTestResultByTreatCode'/>" method="post">
		�����ڵ�� ��ȸ
		<input type="text" name="treatCode"/>
		<input type="submit" value="��ȸ"/>
	</form>
	<br/>
	<!-- listMediaTestResult�� ��� -->
	<form action="<c:url value='/government/getListImageTestResultByCitizenId'/>" method="post">
		�ֹι�ȣ�� ��ȸ
		<input type="text" name="citizenId"/>
		<input type="submit" value="��ȸ"/>
	</form>
	
	<form action="<c:url value='/government/getListImageTestResultByDoctorId'/>" method="post">
		�ǻ��ڵ�� ��ȸ(���� ���ǿ��� �޾Ƽ� ��ûó���ϵ��� �����ҿ���)
		<input type="text" name="doctorId"/>
		<input type="submit" value="��ȸ"/>
	</form>
</body>
</html>