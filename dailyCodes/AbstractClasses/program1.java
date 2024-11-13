abstract class Parent{
	void carrer(){
		System.out.println("Doctor");
	}
	abstract void marry();
}
class Child extends Parent{
	void marry(){
	System.out.println("Anagha");
	}
	public static void  main(String [] args){
		Parent obj = new Child();
		obj.carrer();
		obj.marry();
	}
}

