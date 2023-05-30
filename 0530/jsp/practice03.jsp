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
            <legend>배송 정보</legend>
            <ul id="shippping">
                <li>
                    <label for="prod1">상품 선택</label>
                    <select id="prod1">
                        <option value="special_3" selected>선물용 3kg</option>
                        <option value="specail_5">선물용 5kg</option>
                        <option value="family_3">가정용 3kg</option>
                        <option value="family_5">가정용 5kg</option><
                    </select>
                </li>
                <li>
                    <label for="user-name">이름</label>
                    <input type="text" id="user-name" autofocus required>
                </li>
                <li>
                    <label for="addr">배송 주소</label>
                    <input type="text" id="addr" required>
                </li>
                <li>
                    <label for="mail">이메일</label>
                    <input type="email" id="mail">
                </li>
                <li>
                    <label for="phone">연락처</label>
                    <input type="tel" id="phone" placeholder="하이픈 빼고 입력해 주세요. (01012345678)">
                </li>
                <li>
                    <label for="d-day">배송 지정</label>
                    <input type="date" id="d-day"> <small>(주문일로부터 최소 3일 이후)</small>
                </li>
                <li>
                    <label for="memo">메모</label>
                    <textarea id="memo" cols="40" rows="4"></textarea>
                </li>
            </ul>
        </fieldset>
        <div>
            <input type="submit" value="주문하기">
            <input type="reset" value="취소하기">
        </div>

    </form>
</body>
</html>