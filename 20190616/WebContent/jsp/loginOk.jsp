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
	<h1>LOGIN SUSCESS!</h1>
	
	<div align= "center">
	<h1>���̵� : ${param.id }</h1> <!-- request ��ü �Ķ���� �� �б� --> <!-- **************************************************************************************************** -->
	<h1>�н����� : ${param.pw }</h1>
	<h1>${param.id }���� �α��� �����߽��ϴ�.</h1>
	<h1></h1>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>