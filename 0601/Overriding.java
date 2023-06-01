package practice0601;

class Point {			// extends Object 는 생략 가능 
	int x;
	int y;
	
	
}

class Point3d extends Point {
	// field 
	int z;
	
	// constructor
	Point3d() {}		// 다른 생성자를 생성하였기에 기본 생성자도 추가 
	Point3d(int a, int b, int c) {}
	
	// method
	public String toString() {
		return "x: "+x+", y: "+y;
	}
}

public class Overriding {

	public static void main(String[] args) {
		Point3d pd = new Point3d(3, 5, 7);
		System.out.println(pd);
		
	}

}
