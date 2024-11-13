//Count the no. of elements having atleast 1 element greater than itself
//A : [2,5,1,4,8,0,8,1,3,8]
//N : 10
//Output : 7

class ArrayDemo{
	public static void main(String [] args){
		int arr[] = new int[] {2,5,1,4,8,0,8,1,3,8};
		int count = 0;
		int N = 10;
		int maxEle = Integer.MIN_VALUE;
		for(int i = 0;i<arr.length;i++){
			if(arr[i]>maxEle)
				maxEle = arr[i];

		}
		for(int i=0;i<N;i++){
			if(arr[i]==maxEle)
				count++;
		}
		System.out.println(count);
	}
}
