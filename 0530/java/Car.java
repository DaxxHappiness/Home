package sec04.jcar;

public class Car {
	int gas;
	int speed;
	
	
	// 차 시동 메서드 작성
	void keyTurnOn() {
		System.out.println("키를 돌립니다.");
		System.out.println("가스 잔여량: "+gas);
	}
	
	// 주행 메서드 작성
	void run() {
		System.out.println("주행을 시작합니다.");
		for(int i=10; i<=100; i+=10) {
			speed = i;
			gas -= 1;
			System.out.printf("현재 속도: %d, 잔여 gas: %d%n", speed, gas);
			if (gas < 4 && gas != 0) {
				System.out.println("경고: 가스가 부족합니다. 충전하십시오. !!");
			} else if(gas == 0) {
				System.out.println("연료 부족으로 멈춥니다.");
				System.out.println("시동을 종료합니다.");
				return;
			}
		}
	}
}
