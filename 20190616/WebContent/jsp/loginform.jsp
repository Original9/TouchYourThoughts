<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript">
		function checkForm(){
			var form = document.frm;
			
			if(form.id.value== ""){
				alert("���̵� �Է��ϼ���.");
				form.id.focus();
				return false;
			}						
			
			if(form.id.value != ""){				
				if(frm.pw.value == ""){
					alert("�н����带 �Է����ּ���.");
					form.id.focus();
					return false;
				}
				
			}
			else{
						
			}
			form.submit();		
			
			
		}
	</script>
</head>
<body >
<jsp:include page="menu.jsp"></jsp:include>
<% String id = (String) session.getAttribute("id"); %>
<c:if test = "${empty id }">
<div align="center">
	<div >
		<h1>�α��� ��</h1>	
	</div>
	
	<div>
		<form id = "frm" name = "frm" action="loginCheck.do" method = "post" >
			<table border="1">
				<tr>
					<th width= "100"> ���̵� </th>
					<td><input type = "text" id ="id" name ="id" size = "10"></td>
				</tr>
				
				<tr>
					<th width= "100"> �н����� </th>
					<td><input type = "text" id ="pw" name ="pw" size = "10"></td>
				</tr>
				
			</table> <p>
			<input type = "button" onclick="checkForm()" value = "�α���"> &nbsp;&nbsp;&nbsp;
			<input type = "reset" value = "���">
			<button type = "button" onclick = "location.href = 'insertMember.do'">ȸ������</button>
		</form>
	</div>
</div> 
</c:if>
<c:if test = "${not empty id }">
	<h1>  ${id }���� �̹� �����Ͽ����ϴ�</h1>
	<form id = "frm1" name = "frm1"  action="logout.do" method = "post">
		<input type = "submit" value = "logout" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type = "reset" value = "���">
	</form>
	
</c:if>
	

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>