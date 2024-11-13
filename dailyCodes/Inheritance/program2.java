class Parent {
	Parent(){
		System.out.println("In parent constructor");
	}
	void parentProperty(){
		System.out.println("Flat,Car,Gold");
	}
}
class Child extends Parent{
	Child(){
		//super();
		System.out.println("IN child constructor ");
	}
}
class Client {
	public static void main(String [] args){
		Child obj = new Child();
		obj.parentProperty();
	}
}
