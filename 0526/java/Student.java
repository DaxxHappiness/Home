package sec04.test;

public class Student {
	String name;
	int kor;
	int eng;
	int math;
	
	Student(String name, int kor, int eng, int math) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	
	int getTotal() {
		return kor+eng+math;
	}
	
	double getAvg() {
		return getTotal()/3.0;
	}
	
	void printResult() {
		System.out.println("이름: "+name);
		System.out.println("국어: "+kor+"점");
		System.out.println("영어: "+eng+"점");
		System.out.println("수학: "+math+"점");
		System.out.println();
		
	}
	
	void personResult() {
		System.out.printf("%s	%d	%d	%d	%d	%.2f%n", name,kor,eng,math,getTotal(),getAvg());
		
	}
}
