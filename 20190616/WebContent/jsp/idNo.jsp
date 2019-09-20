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
	<h1>${param.id}사용불가능한 아이디 입니다.</h1>	
	<button type = "button" onclick = "isDateSend">확인</button>
</div>

</body>
</html>