package sec04.test;

import java.util.Scanner;

public class StudentExam {

	public static void main(String[] args) {
		boolean run = true;
		int studentCnt = 0;
		Student[] students = null;
		Scanner scanner = new Scanner(System.in);
		
		int korMax = 0;
		int engMax = 0;
		int mathMax = 0;
		
		String korMaxName = "";
		String engMaxName = "";
		String mathMaxName = "";
		
		
		while(run) {
			System.out.println("----------------------------------------------");
			System.out.println("1.학생 수 | 2.점수입력 | 3.점수리스트 | 4.분석 | 5.종료");
			System.out.println("----------------------------------------------");
			System.out.print("선택>");
			
			int selectNum = Integer.parseInt(scanner.nextLine());
			
			if(selectNum  == 1) {
				System.out.printf("학생 수>");
				studentCnt = Integer.parseInt(scanner.nextLine());
				
				// 입력 받은 학생 수를 토대로 students 배열 초기화에 필요한 개수 선언
				students = new Student[studentCnt];
				continue;
			} else if(selectNum  == 2) {
				for(int i=0; i<students.length; i++) {
					System.out.println("----------------------------------------------");
					System.out.print("이름> ");
					String name = scanner.nextLine();
					System.out.print("국어> ");
					int kor = Integer.parseInt(scanner.nextLine());
					System.out.print("영어> ");
					int eng = Integer.parseInt(scanner.nextLine());
					System.out.print("수학> ");
					int math = Integer.parseInt(scanner.nextLine());
					
					// 반복문으로 입력 받은 값을 객체에 초기화 후 students 배열에 주소 저장
					students[i] = new Student(name, kor, eng, math);
					
					// 추후 분석 사용에 대한 데이터 계산 선처리
					if(korMax < kor) {
						korMax = kor;
						korMaxName = name;
					} else if(engMax < eng) {
						engMax = eng;
						engMaxName = name;
					} else if(mathMax < math) {
						mathMax = math;
						mathMaxName = name;
					}
				}
				continue;
			} else if(selectNum == 3) {
				System.out.println("----------------------------------------------");
				System.out.print("이름	국어	영어	수학	총점	평균\n");
				System.out.println("----------------------------------------------");
				for(int i=0; i<students.length; i++) {
					students[i].personResult();
				}	
				continue;
			} else if(selectNum == 4) {
				// 최고값에 대해 분석 후 출력
				System.out.printf("국어 최고 점수: %d, %s%n", korMax, korMaxName);
				System.out.printf("영어 최고 점수: %d, %s%n", engMax, engMaxName);
				System.out.printf("수학 최고 점수: %d, %s%n", mathMax, mathMaxName);
				continue;
			} else if(selectNum == 5) {
				run = false;
			}
			System.out.println("프로그램 종료");
		}	
	}
}
