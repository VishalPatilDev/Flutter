//Find SquareRoot of a given number with less iteration
import java.io.*;
class SquareRoot{
	static int sqrt(int num){
		int start =1;
		int end = num;
		int ans = 0;
		int itr = 0;
		while(start<=end){
			itr++;
			int mid = (start+end)/2;
			if(mid*mid == num){
				System.out.println(itr);
				return mid;
			}
			if(mid*mid>num){
				end = mid - 1;
			}
			if (mid*mid<num){
				ans = mid;
				start = mid + 1;
			}
		}
		System.out.println(itr);
		return ans;
	}
	public static void main(String [] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int num = Integer.parseInt(br.readLine());
		System.out.println(sqrt(num));
	}
}

			
