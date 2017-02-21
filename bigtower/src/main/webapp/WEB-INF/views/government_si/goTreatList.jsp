<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
	.date {display:none;}
</style>
</head>
<body>
	
	<!-- �Ⱓ�� �����ϸ� ��¥�� ������ �� �ִ� date typeâ�� Ȱ��ȭ�ǰ�, ������ â���� textâ�� Ȱ��ȭ�ȴ�. --> 
	<select id="selectConditions" name="selectConditions">
		<option value="selectNone" selected="selected">���û��� ����</option>
		<option value="selectDate">�Ⱓ</option>
		<option value="selectSubject">�������</option>
		<option value="selectHospital">����</option>
		<option value="selectDisease">������</option>
		<option value="selectDoctor">�ǻ��</option>
	</select>
	<input class="date" type= "date" name="firstDay" id="firstDay">
	<input class="date" type= "date" name="secondDay" id="secondDay">
	<input class="contents" type="text" name="searchContents">
	<input type="button" id="btn" value="�˻�">
	
	<br><br>
	
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
						${diagnosisList.goDiseaseKor}<br>
					</c:forEach>
				</td>
				<td>${treatList.goTreatRegistrationDate}</td>	
			</tr>
		</c:forEach>
	</table>
	
	<script>
		$(document).ready(function(){
			$('#selectConditions').change(function(){
				var state = $('#selectConditions option:selected').val();
				if(state == 'selectDate'){
					$('.date').show();
					$('.contents').hide();
				}else{
					$('.date').hide();
					$('.contents').show();
				}
			});
			$("#btn").bind("click",function(){
				if($('#selectConditions'.val()==""){
					alert('�˻��� ������ �����Ͻÿ�.');
					return;
				}
				if($('.contents'.val()==""){
					alert('�˻��� ������ �Է��Ͻÿ�.');
					return;
				}
				$.ajax({
					url : "/government/treatSearch",
					type : "GET",
					data : {'selectConditions' : $('#selectConditions').val()},
					{'contents' : $('.contents').val()},
					
							
				})
			})
		});

	</script>
</body>
</html>