import java.net.*;
import java.io.*;
class Server{
	public static void main(String [] args)throws IOException{
		ServerSelect ss = new ServerSelect();
		Socket s = ss.accept();
		System.out.println("Connection Established");
		OutputStream os = s.getOutputStream();
		PrintStream ps = new PrintStream(os);
		ps.println("Hello Client");
		ps.println("Go to Hell");
		ps.close();
		s.close();
		ss.close();
	}
}
