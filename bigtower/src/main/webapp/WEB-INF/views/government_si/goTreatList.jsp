<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<form action="<c:url value='/government/treatSearch'/>" method="post">
		<select id="selectConditions">
			<option value="selectAll">���û��� ����</option>
			<option value="0">�Ⱓ</option>
			<option value="selectSubject">�������</option>
			<option value="selectHospital">����</option>
			<option value="selectDisease">������</option>
			<option value="selectDoctor">�ǻ��</option>
		</select>
		<div class="date">
			<input type= "date" name="firstDay" id="firstDay">
			<input type= "date" name="secondDay" id="secondDay">
		</div>
		<input type="text" name="searchContents">
		<input type="submit" value="�˻�">
	</form>

	<table border="1">
		<tr>
			<td>�����ڵ�</td>
			<td>�̸�</td>
			<td>������</td>
			<td>�ǻ��</td>
			<td>�������</td>
			<td>������</td>
			<td>��������</td>
		</tr>
		<!-- �������̺� �ִ� �����͸� ������� ����Ѵ�. -->
		<c:forEach items="${goTreatList}" var="treatList">
			<tr>
				<td><a href="<c:url value='/government/treatView?goTreatCode=${treatList.goTreatCode}' />">${treatList.goTreatCode}</a></td>
				<td>${treatList.goCitizenName}</td>
				<td>${treatList.goHospitalName}</td>
				<td>${treatList.goDoctorName}</td>
				<td>${treatList.goTreatSubjectName}</td>		
				<!-- �����ڵ尡 ������ ���� ����ϰ� �ȴ�. -->
				<td>
					<c:forEach items="${treatList.diagnosisList}" var="diagnosisList">
						${diagnosisList.goDiseaseKor},
					</c:forEach>
				</td>
				<td>${treatList.goTreatRegistrationDate}</td>	
			</tr>
		</c:forEach>
	</table>
	
	<script>
		$(document).ready(function(){
			$('selectConditions').change(function(){
				var state = $('#selectConditions option:selected').val();
				if(state == '�Ⱓ'){
					$('.date').show();
				}else{
					$('.date').hide();
				}
			})
		});

	</script>
</body>
</html>