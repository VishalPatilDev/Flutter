class Parent{
	Object fun(){
		Object obj = new Object();
		System.out.println("parent-fun");
		return obj;
	}
}
class Child extends Parent{
	String fun(){

		System.out.println("child-fun");
		return "shashi";
	}
}
class Client{
	public static void main(String [] args){
		Parent obj = new Child();
		obj.fun();
	}
}

