import java.io.*;
import java.net.*;
class Client {
	public static void main(String [] args)throws IOException{
		 Socket s = new Socket ("LocalHost",1200);
		 InputStream is = s.getInputStream();
		 BufferedReader br = new BufferedReader(new InputStreamReader(is));
		 String str;
		 while((str = br.readLine()) != null){
			 System.out.print(str);
		 }
		 br.close();
		 s.close();
	}
}


