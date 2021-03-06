<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div align="center">
	<div><h1>글 목록 보기</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">번호</th>
				<th width="350">제목</th>
				<th width="100">작성자</th>
				<th width="100">작성일</th>
				<th width="200">첨부파일</th>
				<th width="80">조회수</th>
				
			</tr>
			<!-- db 목록을 가져와서 뿌려주는 곳 -->
			<c:if test="${list.isEmpty()}">
			<tr>
				<td colspan="6"> 등록된 글이 존재하지 않습니다. </td>
			</tr>
			</c:if>
			<c:forEach items="${list }" var="dto">
			<tr onclick="location.href='boarderRead.do?key=${dto.bNum}'">
			
				<td align="center">${dto.bNum } </td>
				<td>&nbsp;&nbsp;${dto.bTitle }  </td>
				<td align="center">${dto.bName }  </td>
				<td align="center">${dto.bWriteDate }  </td>
				<td align="center">${dto.bFileName }</td>
				<td align="center">${dto.bHit }  </td>				
			</tr>
			</c:forEach>
			<!-- db 목록을 가져와서 뿌려주는 곳 -->
		</table>
	</div><br />
	<div>
	<c:if test="${id != null }">
		<button type="button" onclick="location.href='boarderWriteForm.do'">새글쓰기</button>
	</c:if>
	</div><br />
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>