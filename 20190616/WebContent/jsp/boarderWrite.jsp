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
<div align="center">
<jsp:include page="menu.jsp"></jsp:include>
 <div><h1>*글쓰기*</h1></div>
    <br>
    <form id="frm" name="frm" action="boarderWrite.do" method="post" enctype = "multipart/form-data"><!-- enctype 이게 첨부파일 할수 있게 만드는 것 -->
    	<input type="hidden" id="uid" name="uid" value="${id }">
    <div>
    <table border="1">
        <tr>
            <th width="100">작성자</th>
            <td width="200"><input type="text" id="writer" name="writer" value="${name }" readonly></td>
            <th width="100">작성일자</th>
            <td width="200"><input type="date" id="wdate" name="wdate"></td>
        </tr>
            <tr>
            <th width="100">제 목</th>
            <td colspan="3"><input type="text" id="title" name="title" size="150"></td>
        </tr>
        <tr>
            <th width="100">내 용</th>
            <td colspan="3"><textarea rows="10" cols="150" id="content" name="content"></textarea></td>      
        </tr>
        </tr>
            <tr>
            <th width="100">첨부파일</th>
            <td colspan="3"><input type="file" id="fileName" name="fileName" size="150"></td> <!-- 이값이 넘어감  -->
        </tr>
    </table>
    </div><br />
    <div>
    	<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="취소">&nbsp;&nbsp;&nbsp;
    	<input type="button" value="목록보기" onclick="location.href='boarderList.do'">
    </div><br />
    </form>
    <script>
	document.getElementById('wdate').value = new Date().toISOString().substring(0, 10);
</script>
 <jsp:include page="footer.jsp"></jsp:include>
 </div>
</body>

</html>

