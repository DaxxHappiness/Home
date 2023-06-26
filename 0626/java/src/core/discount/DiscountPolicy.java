package core.discount;

import core.member.Member;

public interface DiscountPolicy {			// 할인 정책
	int discout(Member member, int price);	// 할인 금액을 리턴
	
}
