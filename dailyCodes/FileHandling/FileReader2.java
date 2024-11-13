import java.io.*;
class FileReaderDemo{
	public static void main(String[] args)throws IOException{
		FileInputStream fs = new FileInputStream("Incubator.txt");
		FileDescriptor fd = fs.getFD();
		FileReader fr = new FileReader(fd);
		int data = fr.read();
		while (data != -1){
			System.out.print((char)data);
			data = fr.read();
		}
		fr.close();
	}
}
