import java.io.*;
class FileDemo{
	public static void main(String [] args)throws IOException{
		FileWriter fw = new FileWriter("Incubator.txt");
		fw.write("Flutter");
		fw.write("BackEnd");
		fw.write("FrontEnd");
		fw.close();
	}
}
