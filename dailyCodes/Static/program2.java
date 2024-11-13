class Player{
	private int jerNo = 0;
	private String pname = null;
	Player(int jerNo,String pname){  
		this.jerNo = jerNo;
		this.pname = pname;
	}
	void info(){
		System.out.println(jerNo + " , "+ pname);
	}
}
class Client{
	public static void main(String [] args){
		Player p = new Player(18,"Virat");
		p.info();
		Player p1 = new Player(7,"Mahi");
		p1.info();
		Player p2 = new Player(45,"Rohit");
		p2.info();
	}
}

