<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
<jsp:include page="menu.jsp"></jsp:include>
	<div>
		<h1>LOGIN FAIL!</h1>
		<h1>아이디 : ${param.id }</h1> <!-- request 객체 파라메터 값 읽기 -->
		<h1>패스워드 : ${param.pw }</h1>
		<h1>${param.id }님이 로그인 실패했습니다.</h1>
		<button onclick = "location.href= 'login.do'">다시 로그인 하기 </button><p>
		
	</div>
	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>