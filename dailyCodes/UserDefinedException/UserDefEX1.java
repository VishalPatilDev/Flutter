import java.util.Scanner;
class Demo{
	public static void main(String [] args){
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		try{
			if(n==0)
				throw new ArithmeticException("divided by zero");
			System.out.println(10/n);
		}catch(ArithmeticException ae){
			System.out.println("Exception in thread"+Thread.currentThread().getName()+" ");
			ae.printStackTrace();
		}
	}
}
	
