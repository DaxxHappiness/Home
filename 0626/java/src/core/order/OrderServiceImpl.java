package core.order;

import core.discount.DiscountPolicy;
import core.member.Member;
import core.member.MemberRepository;

public class OrderServiceImpl implements OrderService {
	
	private MemberRepository memberRepository;
	private DiscountPolicy discountPolicy;
	

	public OrderServiceImpl(MemberRepository memberRepository, DiscountPolicy discountPolicy) {
		super();
		this.memberRepository = memberRepository;
		this.discountPolicy = discountPolicy;
	}


	@Override
	public Order createOrder(Long memberId, String itemName, int itemPrice) {
		Member member = memberRepository.findById(memberId);
		int discountPrice = discountPolicy.discout(member, itemPrice);
		return new Order(memberId, itemName, itemPrice, discountPrice);
	}
	
}
