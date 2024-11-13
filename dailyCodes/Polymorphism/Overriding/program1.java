class Parent{
	Parent(){
		System.out.println("In Parent Constructor");
	}
	void property(){
		System.out.println("Gold,Home,Car");
	}
	void marry(){
		System.out.println("Arti");
	}
	
}
class Child extends Parent{
	Child(){
		System.out.println("In Child Constructor");
	}
	void marry(){
		System.out.println("Anagha");
	}
}
class Client{
	public static void main(String [] args){
		Parent obj = new Child();
		obj.property();
		obj.marry();
	}
}

