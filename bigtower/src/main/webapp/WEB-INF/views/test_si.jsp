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
	<table border="1">
		<tr>
			<td>�����ڵ�</td>
			<td>�ù�ID</td>
			<td>�ǻ�ID</td>
			<td>���᳻��</td>
			<td>�����ڵ�</td>
		</tr>
		<c:forEach items="${goTreatList}" var="treatList">
			<tr>
				<td>${treatList.goTreatCode}</td>
				<td>${treatList.goCitizenId}</td>
				<td>${treatList.goDoctorId}</td>
				<td>${treatList.goTreatContents}</td>
				<td>${treatList.goDiseaseCode}</td>			
			</tr>
		</c:forEach>
	</table>

</body>
</html>