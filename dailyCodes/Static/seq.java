class Demo{
	int x = 10;
	static int y = 20;
	Demo(){
		System.out.println("In Constructor");
	}
	static{
		System.out.println("In static block1");
	}
	{
		System.out.println("In Instance block1");

	}
	public static void main(String [] args){
		System.out.println("In main");
		Demo obj = new Demo();
	}
	static{
		System.out.println("In static block2");
	}
	{
		System.out.println("In instance block2");
	}
}
