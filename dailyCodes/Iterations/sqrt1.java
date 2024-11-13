//No of iterations = n
import java.io.*;
class SquareRoot{
	static int sqrt(int num){
		int val = 0;
		for(int i = 1;i<=num;i++){
			if(i*i <= num){
				val = i;
			}
			
		}
		return val;
	}
	public static void main(String [] args){
		int num = 100;
		int ret = sqrt(num);
		System.out.println(ret);
	}
}
