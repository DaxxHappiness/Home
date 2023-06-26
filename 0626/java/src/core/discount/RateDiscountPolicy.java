package core.discount;

import core.member.Grade;
import core.member.Member;

public class RateDiscountPolicy implements DiscountPolicy {
	
	private int discountPercent = 10;		// 10% 할인 

	@Override
	public int discout(Member member, int price) {
		if(member.getGrade() == Grade.VIP) {
			return price * discountPercent / 100;
		} else {
			return 0;
		}
	}

}
