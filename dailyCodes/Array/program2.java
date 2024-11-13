import java.io.*;
class ArrayEvenElements{
	public static void main(String [] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter array size : ");
		int n = Integer.parseInt(br.readLine());
		int arr[] = new int [n];
		System.out.println("Enter Elements : ");
		int count = 0;
		int count1 = 0;
		for (int i =0;i<arr.length;i++){
			arr[i] = Integer.parseInt(br.readLine());
			if(arr[i] %2 == 0){
				count ++;
			}
			else{
				count1++;
			}
		}
		System.out.println("Number of even elements in array : "+count);
		System.out.println("Number of odd elements in array : "+count1);
	}
}

