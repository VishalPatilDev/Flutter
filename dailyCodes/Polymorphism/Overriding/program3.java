class Match{
	void matchType(){
		System.out.println("T20,OneDay,Test");
	}
}
class T20Match extends Match{
	void matchType(){
		System.out.println("T20");
	}
}
class TestMatch extends Match{
	void matchType(){
		System.out.println("Test");
	}
}
class Client{
	public static void main(String [] args ){
		Match obj = new T20Match();
		obj.matchType();
		Match obj1 = new TestMatch();
		obj1.matchType();
	}
}
	

