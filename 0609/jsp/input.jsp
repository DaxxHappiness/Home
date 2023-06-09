<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {  /* 문서 전체에 적용하는 스타일 */
  box-sizing: border-box;  /* 박스 사이즈 */
  margin:0;  /* 마진 */
  padding:0;  /* 패딩 */
}
#container {
  width:480px;
  margin:40px auto;
}
fieldset {
  padding:15px;
}
ul {
  list-style:none;
  padding-left:0;
}
li {
  margin:10px;
}
input[type="text"], input[type="tel"], input[type="email"] {
  width:300px;
}
.list label{
 width:100px;
 float:left;
 text-align:left;     
}
p{
 text-align:center; 
}

</style>
</head>
<body>
<form action="connection.jsp">
	<div id="container">
	<fieldset>
		<legend><h4>정보 입력</h4></legend>
		<ul class="list">
			<li>
				<label for="idx">No.</label>
				<input type="text" name="idx" required>
			</li>
			<li>
				<label for="name">이름</label>
				<input type="text" name="name" required>
			</li>
			<li>
				<label for="sal">연봉</label>
				<input type="text" name="sal" required>
			</li>
			<li>
				<label for="phone">휴대폰번호</label>
				<input type="text" name="phone" required>
			</li>
			<input type="submit" value="확인">
		</ul>
	</fieldset>
	
</form>
<form action="connection2.jsp">
	<fieldset>
		<legend><h4>정보 삭제</h4></legend>
		<ul class="list">
			<li>
				<label>NO</label>
				<input type="text" name="idx" required>
				<p><small>* 이동 클릭 시 되돌릴 수 없습니다.</small></p>
			</li>
			<input type="submit" value="확인">
		</ul>
	</fieldset>
</form>
<form action="connection3.jsp">
	<fieldset>
		<legend><h4>데이터 초기화</h4></legend>
		<ul class="list">
			<li>
				<label>테이블 이름</label>
				<input type="text" name="table" required>
				<p><small>* 이동 클릭 시 되돌릴 수 없습니다.</small></p>
			</li>
			<input type="submit" value="확인">
		</ul>
		</ul>
	</fieldset>
	</div>
</form>
</body>
</html>