<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	alert(new date).toTSOString()
	document.getElementByID('wdate').value = new Date().toISOString().substring(0, 10);

</script>

</head>
<body>

	<div align="center">
		<jsp:include page="menu.jsp"></jsp:include>
		<div>
			<h1>글수정</h1>
		</div>
		<br />
		<div>
			<form id="frm" name="frm" action="boardUpdate.do" method="post">
				<!-- .do걸어야됨 -->
				<input type="hidden" id="bnum" name="bnum" value="${key }">
				<div>
					<table border="1">
						<tr>
							<th width="100">작성자</th>
							<td width="200"><input type="text" id="writer" name="writer" value="${name }" readonly="readonly"></td>
							<th width="100">작성일자</th>
							<td width="200">${list.bWriteDate }</td>
						</tr>
						<tr>
							<th width="100">제목</th>
							<td colspan="3"><input type="text" id="title" name="title"
								size="100" value="${list.bTitle }"></td>
						</tr>
						<tr>
							<th width="100">내용</th>
							<td colspan="3"><textarea rows="30" id="content" name="content" style="width:99%" >${list.bContent }</textarea>
					</table>
				</div>
				<br />
				<div>
					<input type="submit" value="수정""}'"> &nbsp;&nbsp; 
					<input type="reset" value="초기화"> &nbsp;&nbsp; 
					<input type="button" value="목록보기" onclick="location.href='boardList.do'">
				</div>
			</form>
			
			<script>
				document.getElementById('wdate').value = new Date().toISOString().substring(0, 10);
			</script>
			
			<jsp:include page="footer.jsp"></jsp:include>

		</div>
</body>
</html>