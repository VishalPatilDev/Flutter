class Parent{
	char fun(){
		System.out.println("In Parent fun");
		return 'a';
	}
}
class Child extends Parent{
	int fun(){
		System.out.println("In Child fun");
		return 10;
	}
}
class  Client{
	public static void main(String [] args){
		Parent  p = new Child();
		p.fun();
	}
}


//return type must be same or covarient in overriding
