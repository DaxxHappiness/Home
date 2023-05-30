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
    <form>
        <fieldset>
            <label>ID: <input type="text" id="uesr_id" size="10"></label>
            <label>PW: <input type="password" id="user_pw" size="10"></label>
            <input type="image" src="C:\_dev\_web\VSCode\0530\bmwEm.png" alt="로그인">
        </fieldset>

        <fieldset>
            <label><h3>배송 정보</h3></label>
            <input type="button" value="공지 창 열기" onclick="window.open('notice.html')">
            <ul>
                <li>
                    <label for="user-name">이름</label>
                    <input type="text" id="user-name">
                </li>
                <li>
                    <label for="addr">배송 주소</label>
                    <input type="text" id="addr">
                </li>
                <li>
                    <label for="email">이메일</label>
                    <input type="text" id="email">
                </li>
                <li>
                    <labㅣe for="phone">연락처</labㅣe>
                    <input type="tel" id="phone">
                </li>
                <li>
                    <label>배송 지정 (주문일로부터 최소 3일 이후)</label>
                    <input type="datetime-local" min="3">
                </li>
            </ul>
        </fieldset>
     
        <fieldset>
            <legend><h3>상품 선택</h3></legend>
            <P><b>주문할 상품을 선택해 주세요.</b></P>
            <ul>
                <li>
                    <label><input type="checkbox" value="s_3">선물용 3kg</label>
                    <input type="number" min="0" max="5">개 (최대 5개)
                </li>
                <li>
                    <label><input type="checkbox" value="s_5">선물용 5kg</label>
                    <input type="number" min="0" max="3" value="1">개 (최대 3개)
                </li>
                <li>
                    <label><input type="checkbox" value="f_3">가정용 3kg</label>
                    <input type="range" min="0" max="5">개 (최대 5개)
                </li>
                <li>
                    <label><input type="checkbox" value="f_5">가정용 5kg</label>
                    <input type="range" min="0" max="3" value="1">개 (최대 3개)
                </li>
            </ul>
            <p><b>포장 선택</b></p>
            <label><input type="radio" name="gift" value="yes">선물 포장</label>
            <label><input type="radio" name="gift" value="no">선물 포장 안 함</label>
        </fieldset>
		   <div>
            <input type="submit" value="주문하기">
            <input type="reset" value="취소하기">
        </div>
    </form>

</body>
</html>