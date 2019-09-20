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
			alert("아이디를 입력하세요.");
			chkId.focus();
			return false;
		}
		
		window.open("idCheck.do?id="+ chkId.value,"", "width=400,height = 400");
	}
	
	
	
	function checkForm(){
		var form = document.frm;
		if(form.id.value==""){
			alert("아이디를 입력해주세요");
			form.id.focus();
			return false;
			if(form.pw.value==""){
				alert("Password를 입력해주세요");
				form.pw.focus();
				return false;
				if(form.name.value ==""){
					alert("이름를 입력해주세요");
					form.name.focus();
					return false;
				}
			}
			
		}
		if(form.pw.value==""){
			alert("Password를 입력해주세요");
			form.pw.focus();
			return false;
			if(form.name.value ==""){
				alert("이름를 입력해주세요");
				form.name.focus();
				return false;
			}
		}
		if(form.name.value ==""){
			alert("이름를 입력해주세요");
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
		<h1>회 원 가 입</h1>
	</div>
	<div align = "center">
		<form id = "frm" name = "frm" action = "join.do" method= "post">
		<div>
			<table border = "1">
				<tr>
					<th width = "100">ID 입력*</th><td><input type = "text" name = "id" id= "id" size = "20">
													  <input type = "button" onclick = "idCheck()" value="중복체크"></td>
				</tr>
				<tr>
					<th width = "100">Pass 입력*</th width = "100"><td><input type = "text" name = "pw" id= "pw" size = "20"></td>
				</tr>
				<tr>
					<th width = "100">이름 입력*</th width = "100"><td><input type = "text" name = "name" id= "name" size = "20"></td>
				</tr>
				<tr>
					<th width = "100">주소 입력</th width = "100"><td><input type = "text" name = "addr" id= "addr" size = "40"></td>
				</tr>
				
			</table>		
		</div>
		<div>
			<input type = "button" onclick = "checkForm()" value=회원가입>&nbsp;&nbsp;&nbsp;
			<input type = "reset" onclick = "location.href='login.do'" value = "취소">&nbsp;&nbsp;&nbsp;<p>
		</div>
		
			
		</form>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>