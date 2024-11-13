import java.io.*;
class AddArrayDemo{
	public static void main(String [] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter array elements");
		int arr[] = new int[5];
		for (int i = 0;i<arr.length;i++){
			arr[i] = Integer.parseInt(br.readLine());
		}
		int sum = 0;
		for (int i=0;i<arr.length;i++){
			sum = sum + arr[i];
		}
		System.out.println("Sum = "+sum);
	}
}

