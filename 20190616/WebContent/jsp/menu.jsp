<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href = "css/menu.css" />
</head>
<body>
<% String id = (String)session.getAttribute("id");
	String grant = (String)session.getAttribute("grant") ; %>
<div class="menubar">
<ul>
 <li><a href="index.jsp">Home</a></li>
 <li><a href="#" id="current">�˸�����</a>
	<ul>
     <li><a href="boarderList.do">��������</a></li>
     <li><a href="#">�����Խ���</a></li>
     <li><a href="#">FAQ</a></li>
     <li><a href="#">�������</a></li>
    </ul>
 </li>
 <li><a href="#">Company</a>
 	<ul>
     <li><a href="#">ȸ��Ұ�</a></li>
     <li><a href="#">ã�ƿ��±�</a></li>     
    </ul>
 </li>
 
 <li><a href="#">Address</a>
 	<ul>
     <li><a href="#">�ּ�</a></li>
     <li><a href="#">����</a></li>     
    </ul>
 </li>
 <li><a href="login.do">Login</a></li>
 <!-- ������ ���Ѹ� �����ִ� �޴� -->
 <c:if test = "${grant == 'S' and id !=null  }">
 	<ul>
 		<li><a href="#">ȸ������</a></li>
 		<li><a href="#">���Ѱ���</a></li>
 	</ul>
 </c:if>
 
 
 
 
</ul>
</div>	

</body>
</html>