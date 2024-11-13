class Parent{
	int x = 10;
	void m1(){
		System.out.println("In Parent m1");
	}
}
class Child extends Parent{
	int a = 20;
	void m1(){
		System.out.println("In Child m1");
	}
}
class Demo{
	Demo(Parent p ){
		System.out.println("In contructor parent");
		p.m1();
	}
	Demo(Child c){
		System.out.println("In constructor child");
		c.m1();
	}
	public static void main(String [] args){
		Demo obj = new Demo(new Parent());
		Demo obj2 = new Demo(new Child());
	}
}
