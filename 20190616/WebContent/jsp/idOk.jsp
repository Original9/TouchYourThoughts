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
	<h1>${param.id}��밡���� ���̵� �Դϴ�.</h1>>	
	<button type = "button" onclick = "window.close()">Ȯ��</button>
</div>
 
</body>
</html>