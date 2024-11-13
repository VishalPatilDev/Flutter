//Return the count of pairs(i,j) with Arr[i]+Arr[j] = k
//Arr : [3,5,2,1,-3,7,8,15,6,13]
//N : 10
//k : 10
//Note : i!=j
//Output : 6

class ArrayDemo{
	public static void main(String [] args){
		int N = 10;
		int K = 10;
		int count =0;
		int arr[] = new int[]{3,5,2,1,-3,7,8,15,6,13};
		for(int i = 0;i<arr.length;i++){
			for(int j=0;j<arr.length;j++){
				if(arr[i]+arr[j]==K && i!=j){
					count++;
				}
			}
		}
		System.out.println(count);
	}
}

