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
 <div><h1>*�۾���*</h1></div>
    <br>
    <form id="frm" name="frm" action="boarderWrite.do" method="post" enctype = "multipart/form-data"><!-- enctype �̰� ÷������ �Ҽ� �ְ� ����� �� -->
    	<input type="hidden" id="uid" name="uid" value="${id }">
    <div>
    <table border="1">
        <tr>
            <th width="100">�ۼ���</th>
            <td width="200"><input type="text" id="writer" name="writer" value="${name }" readonly></td>
            <th width="100">�ۼ�����</th>
            <td width="200"><input type="date" id="wdate" name="wdate"></td>
        </tr>
            <tr>
            <th width="100">�� ��</th>
            <td colspan="3"><input type="text" id="title" name="title" size="150"></td>
        </tr>
        <tr>
            <th width="100">�� ��</th>
            <td colspan="3"><textarea rows="10" cols="150" id="content" name="content"></textarea></td>      
        </tr>
        </tr>
            <tr>
            <th width="100">÷������</th>
            <td colspan="3"><input type="file" id="fileName" name="fileName" size="150"></td> <!-- �̰��� �Ѿ  -->
        </tr>
    </table>
    </div><br />
    <div>
    	<input type="submit" value="���">&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="���">&nbsp;&nbsp;&nbsp;
    	<input type="button" value="��Ϻ���" onclick="location.href='boarderList.do'">
    </div><br />
    </form>
    <script>
	document.getElementById('wdate').value = new Date().toISOString().substring(0, 10);
</script>
 <jsp:include page="footer.jsp"></jsp:include>
 </div>
</body>

</html>

