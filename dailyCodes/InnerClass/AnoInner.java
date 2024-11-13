class Demo{
	void marry(){
		System.out.println("Kriti");
	}
}
class Client{
	public static void main(String [] args){
		Demo obj = new Demo(){
			void marry(){
				System.out.println("Disha");
			}
		};
		obj.marry();
	}
}
