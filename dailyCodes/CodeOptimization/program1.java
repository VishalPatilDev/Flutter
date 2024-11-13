import java.io.*;
class SquareRoot{
	static int sqrt(int num){
		int val = 0;
		for(int i = 1;i<=num;i++){
			if(i*i<=num){
				val = i;
			}
		}
		return val;
	}
	public static void main(String [] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter a perfect number : ");
		int num = Integer.parseInt(br.readLine());
		System.out.println(sqrt(num));
	}
}

