<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="container">
        <h1>회원 가입을 환영합니다.</h1>
        <form>
            <fieldset>
                <legend>사용자 정보</legend>
                <ul>
                    <li>
                        <label for="user-id">아이디</label>
                        <input type="text" id="uid" autofocus placeholder="4자 ~ 10자 사이, 공백없이">
                    </li>
                    <li>
                        <label for="umail">E-Mail</label>
                        <input type="email" id="umail" required>
                    </li>
                    <li>
                        <label for="pwd1">비밀번호</label>
                        <input type="password" id="pwd1" placeholder="문자와 숫자, 특수 기호 포함">
                    </li>
                    <li>
                        <label for="pwd2">비밀번호 확인</label>
                        <input type="password" id="pwd2" required>
                    </li>
                    <li>
                        <label for="path">가입 경로</label>
                        <select id="path">
                            <option value="blog">블로그</option>
                            <option value="검색">검색</option>
                            <option value="sns">SNS</option>
                            <option value="etc">기타</option>
                        </select>
                    </li>
                </ul>
            </fieldset>
            <fieldset>
                <legend>이벤트와 새로운 소식</legend>
                <input type="radio" name="mailing" id="mailing_y">
                <label for="mailing_y">메일 수신</label>
                <input type="radio" name="mailing" id="mailing_n" checked>
                <label for="mailing_n">메일 수신 안 함</label>
            </fieldset>
            <div id="buttons">
                <input type="submit" value="가입하기">
                <input type="reset" value="취소">
            </div>
        </form>
    </div>
</body>
</html>