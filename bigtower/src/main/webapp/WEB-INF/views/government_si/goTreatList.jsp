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
	<input id="searchContents" type="text" name="searchContents">
	<input type="button" id="btn" value="�˻�">
	
	<br><br>
	
	<table border="1">
		<thead>
			<tr>
				<td>�����ڵ�</td>
				<td>�̸�</td>
				<td>������</td>
				<td>�ǻ��</td>
				<td>�������</td>
				<td>������</td>
				<td>��������</td>
			</tr>
		</thead>
		<!-- �������̺� �ִ� �����͸� ������� ����Ѵ�. -->
		<tbody>
		</tbody>

	</table>
	
	<script>
		$(document).ready(function(){
			//�Ⱓ�� ���ý� date ����â�� ���̵���
			$('#selectConditions').change(function(){
				var state = $('#selectConditions option:selected').val();
				if(state == 'selectDate'){
					$('.date').show();
					$('#searchContents').hide();
				}else{
					$('.date').hide();
					$('#searchContents').show();
				}
			});
			//��ư Ŭ���� �˻����� ������
			$("#btn").bind("click",function(){
				alert('�� ��ư Ŭ���߳�?')		
				if($('#selectConditions').val()==""){
					alert('�˻��� ������ �����Ͻÿ�.');
					return;
				}
				if($('#searchContents').val()==""){
					alert('�˻��� ������ �Է��Ͻÿ�.');
					return;
				}
				$.ajax({
					url : "/government/treatSearch",
					type : "GET",
					data : {'selectConditions' : $('#selectConditions').val(),
							'searchContents' : $('#searchContents').val()},
					success : function(data){
						console.log('����');
						$.each(data, function(key, item) {
							
						/* 	$("#memberTbody").append("<tr>");
							$("#memberTbody").append("<td>" + item.memberNo + "</td>");
							$("#memberTbody").append("<td>" + item.memberName + "</td>");
							$("#memberTbody").append("<td>" + item.memberLevel + "</td>");
							$("#memberTbody").append("<td>" + item.memberAddress + "</td>");
							$("#memberTbody").append("<td>" + item.memberPhone + "</td>");
							$("#memberTbody").append("<td><button class='memberClass' data-dismiss='modal' value='"+item.memberNo+"'>����</button>");
							$("#memberTbody").append("</tr>");
							 */
							console.log('goCitizenName:'+item.goCitizenName);
						 	var diseaseKor = '';
						 	$.each(item.diagnosisList, function(key, value) {
								console.log('test');
								console.log('value'+value);
								console.log('value.goDiseaseKor'+value.goDiseaseKor);
								diseaseKor += value.goDiseaseKor+',';
							});
							var table = '<tr>'
											+'<td><a href="<c:url value="/government/treatView?goTreatCode='+item.goTreatCode+'" />">'+item.goTreatCode+'</a></td>'
											+'<td>'+item.goCitizenName+'</td>'
											+'<td>'+item.goHospitalName+'</td>'
											+'<td>'+item.goDoctorName+'</td>'
											+'<td>'+item.goTreatSubjectName+'</td>'
											+'<td>'
											+diseaseKor+'</td>'
											+'<td>'+item.goTreatRegistrationDate+'</td>'
										+'</tr>';
										console.log(table);
							$('tbody').append(table);
							
							/* $('tbody').append('<tr>');
							$('tbody').append('<td><a href="<c:url value="/government/treatView?goTreatCode='+item.goTreatCode+'" />">'+item.goTreatCode+'</a></td>');
							$('tbody').append('<td>'+item.goCitizenName+'</td>');
							$('tbody').append('<td>'+item.goHospitalName+'</td>');
							$('tbody').append('<td>'+item.goDoctorName+'</td>');
							$('tbody').append('<td>'+item.goTreatSubjectName+'</td>');
							$('tbody').append(); */
							//console.log('diagnosisList:'+item.diagnosisList);
							/* for(var i=0; i<item.diagnosisList.length;i++){
								$('tbody').append(item.diagnosisList.goDiseaseKor+',');
							} */
							
							/* $.each(item.diagnosisList, function(key, value) {
								$('tbody').append(value.goDiseaseKor+',');
								console.log('each�� ��');
							}); */
							/* console.log('each�� �ٱ�');
							$('tbody').append('<td>'+item.goTreatRegistrationDate+'</td>');
							$('tbody').append('</tr>'); */

							/* $('#citizenName').val(item.goCitizenName);
							$('#hospitalName').val(item.goHospitalName);
							$('#doctorName').val(item.goDoctorName);
							$('#treatSubjectName').val(item.goTreatSubjectName);
							$('#diseaseName').val(item.goDiseaseKor);
							$('#registrationDate').val(item.goTreatRegistrationDate);
						 */
						})

					}
				});
			}); //click functin ����
		});
	</script>
</body>
</html>