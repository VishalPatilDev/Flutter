//Creating a file and check wheather it exsits or not
import java.io.*;
class FileDemo{
	public static void main(String [] args)throws IOException{
		File obj = new File("abc.txt");
		obj.createNewFile();
		System.out.println(obj.exists());
	}
}
