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
		<h1>���̵� : ${param.id }</h1> <!-- request ��ü �Ķ���� �� �б� -->
		<h1>�н����� : ${param.pw }</h1>
		<h1>${param.id }���� �α��� �����߽��ϴ�.</h1>
		<button onclick = "location.href= 'login.do'">�ٽ� �α��� �ϱ� </button><p>
		
	</div>
	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>