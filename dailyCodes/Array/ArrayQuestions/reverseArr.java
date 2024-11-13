//Reverse the array without using extra  space
//Arr :[8,4,1,3,9,2,6,7]

class ArrayDemo{
	public static void main(String [] args){
		int arr[] =  new int[]{8,4,1,3,9,2,6,7};
		int N = 8;
		int i =0;
		int j=N-1;
		while(i<j){
			int temp = arr[i];
			arr[i]=arr[j];
			arr[j]=temp;
			i++;
			j--;
		}
		for (i=0;i<N;i++){
			System.out.println(arr[i]);
		}
	}
}
