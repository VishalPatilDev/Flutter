class Parent{
	int x = 10;
	static int y = 20;
	static {
		System.out.println("In Parent static block");
	}
	Parent(){
		System.out.println("In Parent constructor");
	}
	void m1(){
		System.out.println(x);
		System.out.println(y);
	}
	static void m2(){
		System.out.println(y);
	}
}
class Child extends Parent{
	static{
		System.out.println("In child static block");
	}
	Child(){
		System.out.println("In child constructor");
	}
}
class Client{
	public static void main(String [] args){
		Child obj = new Child();
		obj.m1();
		obj.m2();
	}
}
