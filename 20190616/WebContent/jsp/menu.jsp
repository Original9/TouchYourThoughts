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
 <li><a href="#" id="current">알림마당</a>
	<ul>
     <li><a href="boarderList.do">공지사항</a></li>
     <li><a href="#">자유게시판</a></li>
     <li><a href="#">FAQ</a></li>
     <li><a href="#">사업공고</a></li>
    </ul>
 </li>
 <li><a href="#">Company</a>
 	<ul>
     <li><a href="#">회사소개</a></li>
     <li><a href="#">찾아오는길</a></li>     
    </ul>
 </li>
 
 <li><a href="#">Address</a>
 	<ul>
     <li><a href="#">주소</a></li>
     <li><a href="#">지도</a></li>     
    </ul>
 </li>
 <li><a href="login.do">Login</a></li>
 <!-- 관리자 권한만 보여주는 메뉴 -->
 <c:if test = "${grant == 'S' and id !=null  }">
 	<ul>
 		<li><a href="#">회원관리</a></li>
 		<li><a href="#">권한관리</a></li>
 	</ul>
 </c:if>
 
 
 
 
</ul>
</div>	

</body>
</html>