<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import = "java.util.Date" %>
 
<!DOCTYPE html>
<html>
<jsp:include page="menu.jsp"></jsp:include>
  <head>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <title>�����̵� ����</title>
     <style media="screen">
      *{
        margin: 0; padding: 0;
      }
      .slide{
        width: 1000px;
        height: 600px;
        overflow: hidden;
        position: relative;
        margin: 0 auto;
      }
      .slide ul{
        width: 5000px;
        position: absolute;
        top:0;
        left:0;
        font-size: 0;
      }
      .slide ul li{
        display: inline-block;
      }
      #back{
        position: absolute;
        top: 250px;
        left: 0;
        cursor: pointer;
        z-index: 1;
      }
      #next{
        position: absolute;
        top: 250px;
        right: 0;
        cursor: pointer;
        z-index: 1;
      }
     </style>
  </head>
  <body>
    <div class="slide">
      <img id="back" src="img/back.png" alt="" width="100">
      <ul>      	
        <li><img src="img/name1.png" alt="" width="1000" height="600"></li>
        <li><img src="img/name2.png" alt="" width="1000" height="600"></li>
        <li><img src="img/name3.png" alt="" width="1000" height="600"></li>
        <li><img src="img/name4.png" alt="" width="1000" height="600"></li>
        <li><img src="img/name5.png" alt="" width="1000" height="600"></li>        
      </ul>
      <img id="next" src="img/next.png" alt="" width="100">
    </div>
    <div align ="center">
		<h1>����� Ȩ �Դϴ�</h1>
	<c:if test="${not empty id }">  <!-- �α��� ������ ��Ÿ���� �޼��� -->
		<h1>${id }�� ȯ���մϴ�</h1>
	</c:if>	
	</div>
  </body>

  <script type="text/javascript">
    $(document).ready(function(){
      var imgs;
      var img_count;
      var img_position = 1;

      imgs = $(".slide ul");
      img_count = imgs.children().length; // �̹��� ���� �ľ�

      //��ư�� Ŭ������ �� �Լ� ����
      $('#back').click(function () {
        back();
      });
      $('#next').click(function () {
        next();
      });

      function back() {
        if(1<img_position){
          imgs.animate({
            left:'+=1000px'
          });          
          img_position--;
        }
        if(img_position == 1){
        	imgs.animate({
                left:'-=4000px'
              });
        	img_position = 5;
        }
        
        
      }
      function next() {
        if(img_count>img_position){
          imgs.animate({
            left:'-=1000px'
          });
          img_position++;
        }
        if(img_position == imgs.children().length){
        	imgs.animate({        		
                left:'+= 4000px'
              });
        	img_position = 1;
        }
      }


      //�̹��� ������ ���� ��ư �������


      //ù �̹����� ���ƿ���


    });
  </script>
  <jsp:include page="footer.jsp"></jsp:include>
</html>
