enum LineUp{
	Rohit,
	MS,
	Virat,
	Ishan;
	public static void main(String [] args){
		LineUp player = LineUp.Virat;
		switch(player){
			case Rohit:
				System.out.println("Sharma");
				break;
			case MS:
				System.out.println("Dhoni");
				break;
			case Virat:
				System.out.println("Kohli");
				break;
			case Ishan:
				System.out.println("Kishan");
				break;
			default:
				System.out.println("Player not found");
		}
	}
}
