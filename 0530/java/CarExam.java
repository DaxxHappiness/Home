package sec04.jcar;

public class CarExam {

	public static void main(String[] args) {
		Car car = new Car();
		
		// 가스 주입
		car.gas = 7;
		
		// 차 시동 메서드
		car.keyTurnOn();
		
		// 주행 메서드 - 주행 시 가스 1씩 소모되고 속도는 10씩 증가
		car.run();
		
	}
}
