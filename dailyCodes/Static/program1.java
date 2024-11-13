class Demo {
	int x = 10;
	Demo(){   //Demo(Demo this)
		this(10);
		System.out.println("In no args constructor");
	
	}
	Demo(int x ){  //Demo(Demo this,int x)
		System.out.println("In Para Constructor");
	}
	public static void main(String [] args){
		Demo obj1 = new Demo();
		Demo obj2 = new Demo(10);
	}
}
