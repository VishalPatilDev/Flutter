class finallyDemo{
	void m1(){
		System.out.println("in m1");
	}
	void m2(){
		System.out.println("in m2");
	}
	public static void main(String [] args){
		finallyDemo obj = new finallyDemo();
		obj.m1();
		obj = null;
		try{
			obj.m2();
		}catch(NullPointerException n){
	
		}finally{
			System.out.println("Connection closed");
		}
		System.out.println("End main");
	}
}
