class StackDemo{
	static void fun (int n){
		fun(++n);
	}
	public static void main(String [] args){
		fun(1);
	}
}
