<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type = "text/javascript">
	function idCheck(){
		var chkId = document.frm.id;
		if(chkId.value == ""){
			alert("���̵� �Է��ϼ���.");
			chkId.focus();
			return false;
		}
		
		window.open("idCheck.do?id="+ chkId.value,"", "width=400,height = 400");
	}
	
	
	
	function checkForm(){
		var form = document.frm;
		if(form.id.value==""){
			alert("���̵� �Է����ּ���");
			form.id.focus();
			return false;
			if(form.pw.value==""){
				alert("Password�� �Է����ּ���");
				form.pw.focus();
				return false;
				if(form.name.value ==""){
					alert("�̸��� �Է����ּ���");
					form.name.focus();
					return false;
				}
			}
			
		}
		if(form.pw.value==""){
			alert("Password�� �Է����ּ���");
			form.pw.focus();
			return false;
			if(form.name.value ==""){
				alert("�̸��� �Է����ּ���");
				form.name.focus();
				return false;
			}
		}
		if(form.name.value ==""){
			alert("�̸��� �Է����ּ���");
			form.name.focus();
			return false;
		}
		
		
		
		form.submit();
	}
</script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

	<div align = "center">
		<h1>ȸ �� �� ��</h1>
	</div>
	<div align = "center">
		<form id = "frm" name = "frm" action = "join.do" method= "post">
		<div>
			<table border = "1">
				<tr>
					<th width = "100">ID �Է�*</th><td><input type = "text" name = "id" id= "id" size = "20">
													  <input type = "button" onclick = "idCheck()" value="�ߺ�üũ"></td>
				</tr>
				<tr>
					<th width = "100">Pass �Է�*</th width = "100"><td><input type = "text" name = "pw" id= "pw" size = "20"></td>
				</tr>
				<tr>
					<th width = "100">�̸� �Է�*</th width = "100"><td><input type = "text" name = "name" id= "name" size = "20"></td>
				</tr>
				<tr>
					<th width = "100">�ּ� �Է�</th width = "100"><td><input type = "text" name = "addr" id= "addr" size = "40"></td>
				</tr>
				
			</table>		
		</div>
		<div>
			<input type = "button" onclick = "checkForm()" value=ȸ������>&nbsp;&nbsp;&nbsp;
			<input type = "reset" onclick = "location.href='login.do'" value = "���">&nbsp;&nbsp;&nbsp;<p>
		</div>
		
			
		</form>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>