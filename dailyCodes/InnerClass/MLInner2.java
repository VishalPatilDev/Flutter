class Outer {
	Object m1(){
		System.out.println("In m1 outer");
		class Inner{
			void m1(){
				System.out.println("In m1 inner");
			}	
		}
		return new Inner();
	}
	void m2(){
		System.out.println("In m2 outer");
	}
}
class Client{
	public static void main(String [] args){
		Outer obj = new Outer();
		obj.m1();
	}
}

