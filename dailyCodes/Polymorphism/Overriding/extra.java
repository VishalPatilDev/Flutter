class Demo extends Exception{
	Demo(String str){
		super(str);
	}
}
class Parent{
	Parent(){
		System.out.println("Parent Constructor");
	}
	void m1()throws Demo{
		System.out.println("Parent m1");
		throw new Demo("Exception thrown");
	}
}
class Child extends Parent{
	Child(){
		System.out.println("Child Constructor");
	}
	void m1(){
		System.out.println("Child m1");
	}
}
class Client{
	public static void main(String [] args){
		Parent  p= new Child();
		/*try{
			p.m1();
		}catch(Demo d){
			d.printStackTrace();
		}*/
		p.m1();
	}
}
