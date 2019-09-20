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
	<div><h1>�� ��� ����</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">��ȣ</th>
				<th width="350">����</th>
				<th width="100">�ۼ���</th>
				<th width="100">�ۼ���</th>
				<th width="200">÷������</th>
				<th width="80">��ȸ��</th>
				
			</tr>
			<!-- db ����� �����ͼ� �ѷ��ִ� �� -->
			<c:if test="${list.isEmpty()}">
			<tr>
				<td colspan="6"> ��ϵ� ���� �������� �ʽ��ϴ�. </td>
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
			<!-- db ����� �����ͼ� �ѷ��ִ� �� -->
		</table>
	</div><br />
	<div>
	<c:if test="${id != null }">
		<button type="button" onclick="location.href='boarderWriteForm.do'">���۾���</button>
	</c:if>
	</div><br />
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>