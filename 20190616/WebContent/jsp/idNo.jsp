<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function isDateSend(){
		opener.document.frm.id.value="";
		opener.document.get.frm.id.focus();
		window.close();
	}

</script>
</head>
<body>
<div align = "center">
	<h1>${param.id}���Ұ����� ���̵� �Դϴ�.</h1>	
	<button type = "button" onclick = "isDateSend">Ȯ��</button>
</div>

</body>
</html>