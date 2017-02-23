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
	
	<table>
		<thead>
			<tr>
				<td>�Ⱓ :</td> 
				<td><input class="date" type= "date" name="firstDay" id="firstDay">~</td>			
				<td><input class="date" type= "date" name="secondDay" id="secondDay"></td>
			</tr>
			<tr>
				<td>������� :</td> 
				<td colspan="2"><input id="subjectSearch" type="text" name="subjectSearch"></td>
			</tr>
			<tr>
				<td>���� :</td> 
				<td colspan="2"><input id="hospitalSearch" type="text" name="hospitalSearch"></td>
			</tr>
			<tr>
				<td>������:</td> 
				<td colspan="2"><input id="diseaseSearch" type="text" name="diseaseSearch"></td>
			</tr>
			<tr>
				<td>�ǻ��:</td> 
				<td colspan="2"><input id="doctorSearch" type="text" name="doctorSearch"></td>
			</tr>
		</thead>
	</table>
	<br>
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
			//��ư Ŭ���� �˻����ǰ� ���뿡 �����ϴ� ��� ����ϱ�
			$("#btn").bind("click",function(){		
				
				$.ajax({
					url : "/government/treatSearch",
					type : "GET",
					data : {'firstDay' : $('#firstDay').val(),
							'secondDay' : $('#secondDay').val(),
							'subjectSearch' : $('#subjectSearch').val(),
							'hospitalSearch' : $('#hospitalSearch').val(),
							'diseaseSearch' : $('#diseaseSearch').val(),
							'doctorSearch' : $('#doctorSearch').val()},
					//�Լ��� �����ϸ�
					success : function(data){
						console.log('����');
						$('tbody').empty();
						var count = data.length;
						console.log('count:'+count);
						alert(count + '���� �˻��Ǿ����ϴ�.');
						//�ݺ����� ���� �˻����ǿ� �´� ����� ����Ѵ�
						$.each(data, function(key, item) {  
							console.log('goCitizenName:'+item.goCitizenName);
						 	var diseaseKor = '';
						 	//������� �������� �ݺ���
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
						})

					}
				});
			}); //click functin ����
		});
	</script>
</body>
</html>