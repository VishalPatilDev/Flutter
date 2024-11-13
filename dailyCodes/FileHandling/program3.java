//For Counting Files or Folders
import java.io.*;
class FileDemo{
	public static void main(String [] args)throws IOException{
		int count = 0;
		File obj = new File("C:/Users/91866/Java_Programming/dailyCodes/FileHandling");
		System.out.println(obj.exists());
		String[] Files = obj.list();
		for(String str : Files){
			File f = new File(str);
			if(f.isFile()){
				count++;
			}
			System.out.println(count);
		}
	}
}
