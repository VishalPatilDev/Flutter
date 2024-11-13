class Demo {
	public static void main(String [] args){
		System.out.println("start main");
		try{
			System.out.println(10/0);
		}catch(ArithmeticException ae){
		}
		System.out.println("End main");
	}
}
