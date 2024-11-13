import java.util.Scanner;
class DataOverFlowException extends RuntimeException{
	DataOverFlowException(String msg){
		super(msg);
	}
}
class DataUnderFlowException extends RuntimeException{
	DataUnderFlowException(String msg){
		super(msg);
	}
}
class ArrayDemo{
	public static void main(String [] args){
		int arr[] = new int[5];
	Scanner sc = new Scanner(System.in);
	System.out.println("Enter integer value");
	for(int i = 0;i<arr.length;i++){
		int data = sc.nextInt();
		if(data<0)
			throw new DataUnderFlowException("data is less than 0");
		if(data>100)
			throw new DataOverFlowException("data is more than 100");
		arr[i] = data;
	}
	for (int i=0;i<arr.length;i++){
		System.out.println(arr[i]+" ");
	}
}
}
