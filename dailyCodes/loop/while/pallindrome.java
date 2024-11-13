class pallindrome{
	public static void main(String [] args ){
		int n = 2332;
		int rev = 0 ;
		int temp = n ;
		while (n!=0){
			int rem = n%10;
			rev = rev*10+rem;
			n = n/10;

		}
		if (temp == n){
			System.out.println("number is pallindrome");
		}
	}
}
