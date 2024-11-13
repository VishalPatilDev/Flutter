class sumDemo{
	public static void main (String []args){
		int a = 4231;
		int sum = 0;
		while(a!=0){
			int rem = a%10;
			a = a/10;
			sum = sum +rem;
		}
		System.out.println(sum);
	}
}
