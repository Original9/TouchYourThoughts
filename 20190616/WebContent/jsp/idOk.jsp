<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type = "text/javascript">
	function close(){
		opener.document.frm.pw.focus();
		window.close();
	}
</script>
</head>
<body>
<div align = "center">
	<h1>${param.id}사용가능한 아이디 입니다.</h1>>	
	<button type = "button" onclick = "window.close()">확인</button>
</div>
 
</body>
</html>