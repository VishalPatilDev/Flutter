import java.io.*;
class Demo{
	public static void main(String [] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter fav batsman : ");
		String name1 = br.readLine();
		System.out.println("Enter fav baller : ");
		String name2 = br.readLine();
		System.out.println("Fav Batsman is : "+name1);
		System.out.println("Fav Baller is : "+name2);
	}
}
