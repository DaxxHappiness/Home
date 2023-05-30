<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>연습문제 2</title>
    <style>
			#container { 
				width:520px;
				border:1px solid black;
				padding:20px 40px;
				margin:0 auto;
			}
      fieldset { margin-bottom:15px; }
      legend { font-weight:bold; }
			ul {list-style-type: none;}
			li { line-height:30px;}
    </style>
  </head>
  <body>
		<div id="container">
			<h1>프런트엔드 개발자 지원서 </h1>
			<p>HTML, CSS, Javascript에 대한 기술적 이해와 경험이 있는 분을 찾습니다.</p>
			<hr>
			<form>
				<h3>개인 정보</h3>
				<ul>
					<li>
						<label for="user-id">이름</label>
						<input type="text" id="user-id" placeholder="공백 없이 입력하세요.">
					</li>
					<li>
						<label for="phone">연락처</label>
						<input type="tle" id="phone">
					</li>
				</ul>
				<h3>지원 분야</h3>
				<ul>
					<li>
						<input type="checkbox" id="webPublishing">
						<label for="webPublishing">웹 퍼블리싱</label>
					</li>
					<li>
						<input type="checkbox" id="webAppDevelop">
						<label for="webAppDevelop">웹 애플리케이션 개발</label>
					</li>
					
						<input type="checkbox" id="developEnviroment">
						<label for="developEnviroment">개발 환경 개선</label>
					</li>
				</ul>
				<h3>지원 동기</h3>
				<textarea id="memo" cols="60" rows="5" placeholder="본사 지원 동기를 간략히 써 주세요."></textarea>
				<div>
					<input type="submit" value="접수하기">
					<input type="reset" value="다시 쓰기">
				</div>
			</form>
		</div>
  </body>
</html>