<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form action="<c:url value='/government/getOneBloodTestResultByTreatCode'/>" method="post">
		��Ʈ�ڵ�� ��ȸ
		<input type="text" name="treatCode"/>
		<input type="submit" value="��ȸ"/>
	</form>
	<br/><br/><br/>
	
	<form action="<c:url value='/government/getListBloodTestResultByCitizenId'/>" method="post">
		�ֹι�ȣ�� ��ȸ
		<input type="text" name="citizenId"/>
		<input type="submit" value="��ȸ"/>
	</form>
	
	<form action="<c:url value='/government/getListBloodTestResultByDoctorId'/>" method="post">
		�ǻ��ڵ�� ��ȸ(���� ���ǿ��� �޾Ƽ� ��ûó���ϵ��� �����ҿ���)
		<input type="text" name="doctorId"/>
		<input type="submit" value="��ȸ"/>
	</form>
</body>
</html>