package core.discount;

import core.member.Grade;
import core.member.Member;

public class FixDiscountPolicy implements DiscountPolicy{

	private int discountFixAmount = 1000;		// 1000원 할인
	
	@Override
	public int discout(Member member, int price) {
		if(Grade.VIP == member.getGrade()) {
			return discountFixAmount;
		} else {
			return 0;
		}
	}
	
}
