class Demo{
	@Deprecated
	void m1(){
		System.out.println("Parent m1");
	}
}
class Client{
	@SuppressWarnings("XYZ")
	public static void main(String [] args){
		Demo d = new Demo();
		d.m1();
	}
}
