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
			<td>${Treat.goTreatCode}</td>			
		</tr>
		<tr>
			<td>������</td>
			<td>${Treat.goHospitalName}</td>
		</tr>
		<tr>
			<td>�����ּ�</td>
			<td>${Treat.goHospitalAddress}</td>
		</tr>
		<tr>
			<td>�����̸�</td>
			<td>${Treat.goCitizenName}</td>
		</tr>
		<tr>
			<td>�ǻ��</td>
			<td>${Treat.goDoctorName}</td>
		</tr>
		<tr>
			<td>�������</td>
			<td>${Treat.goTreatSubjectName}</td>
		</tr>
		<tr>
			<td>��Ʈ�ڵ�</td>
			<td>${Treat.goChartCode}</td>
		</tr>
		<tr>
			<td>������</td>
			<td>${Treat.goDiseaseKor}</td>
		</tr>
		<tr>
			<td>��Ʈ����</td>
			<td>${Treat.goChartSeq}</td>
		</tr>
		<tr>
			<td>���᳻��</td>
			<td>${Treat.goTreatContents}</td>
		</tr>
		<tr>
			<td>��������</td>
			<td>${Treat.goTreatRegistrationDate}</td>
		</tr>
	</table>

</body>
</html>