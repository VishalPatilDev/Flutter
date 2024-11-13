import java.io.*;
class Player implements Serializable{
	int jerNo = 0;
	String name = null;
	Player(int jerNo , String name){
		this.jerNo = jerNo;
		this.name = name;
	}
}
class SerializationDemo{
	public static void main(String [] args)throws IOException{
		Player obj1 = new Player(1,"KLRahul");
		Player obj2 = new Player(45,"Rohit");

		FileOutputStream fos = new FileOutputStream("PlayerData.txt");
		ObjectOutputStream oos = new ObjectOutputStream(fos);

		oos.writeObject(obj1);
		oos.writeObject(obj2);

		oos.close();
		fos.close();
	}
}

