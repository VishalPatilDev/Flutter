interface Demo{
	void fun();
	void gun();
}
class DemoChild implements Demo{
	public void fun(){
		System.out.println("In fun");
	}
	public void gun(){
		System.out.println("In gun");
	}

}
class Client {
	public static void main(String [] args){
		Demo obj = new DemoChild();
		obj.fun();
		obj.gun();
		}
}

	
