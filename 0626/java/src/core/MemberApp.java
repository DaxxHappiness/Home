package core;

import core.member.Grade;
import core.member.Member;
import core.order.Order;

public class MemberApp {

	public static void main(String[] args) {
		AppConfig app = new AppConfig();
		Member member = new Member(1L, "홍길동", Grade.VIP);
		app.memberService().join(member);						// 회원 등록
		
		Member findMember = app.memberService().findMember(1L);	// 회원 검색
		System.out.println(findMember);
		
		Order order = app.orderService().createOrder(1L, "BMW5", 9000);
		System.out.println("할인 금액: "+order.getDiscountPrice()+"원");
		System.out.println("지불 금액: "+order.calculatePrce()+"원");
	}
}
