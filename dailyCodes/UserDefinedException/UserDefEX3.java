import java.util.*;
class FailException extends RuntimeException{
	FailException(String str){
		super(str);
	}
}
class Result{
	public static void main(String [] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter marks");
		int marks = sc.nextInt();
		if(marks<20){
			throw new FailException("marks are less than 20 ");
		}
	}
}
