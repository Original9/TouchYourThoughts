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
				alert("아이디를 입력하세요.");
				form.id.focus();
				return false;
			}						
			
			if(form.id.value != ""){				
				if(frm.pw.value == ""){
					alert("패스워드를 입력해주세요.");
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
		<h1>로그인 폼</h1>	
	</div>
	
	<div>
		<form id = "frm" name = "frm" action="loginCheck.do" method = "post" >
			<table border="1">
				<tr>
					<th width= "100"> 아이디 </th>
					<td><input type = "text" id ="id" name ="id" size = "10"></td>
				</tr>
				
				<tr>
					<th width= "100"> 패스워드 </th>
					<td><input type = "text" id ="pw" name ="pw" size = "10"></td>
				</tr>
				
			</table> <p>
			<input type = "button" onclick="checkForm()" value = "로그인"> &nbsp;&nbsp;&nbsp;
			<input type = "reset" value = "취소">
			<button type = "button" onclick = "location.href = 'insertMember.do'">회원가입</button>
		</form>
	</div>
</div> 
</c:if>
<c:if test = "${not empty id }">
	<h1>  ${id }님이 이미 접속하였습니다</h1>
	<form id = "frm1" name = "frm1"  action="logout.do" method = "post">
		<input type = "submit" value = "logout" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type = "reset" value = "취소">
	</form>
	
</c:if>
	

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>