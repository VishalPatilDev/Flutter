interface Demo1{
	void fun();
}
interface Demo2{
	void fun();
}
class DemoChild implements Demo1,Demo2{
	public void fun(){
		System.out.println("In fun Child");
	}
}
class Client{
	public static void main(String [] args){
		Demo1 obj1 = new DemoChild();
		obj1.fun();
		Demo2 obj2 = new DemoChild();
		obj2.fun();


	}
}

