import java.io.*;
class PlayerInfo{
	public static void main(String [] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter player name : ");
		String name = br.readLine();
		System.out.println("Enter jersy no.");
		int jerNo = Integer.parseInt(br.readLine());
		System.out.println("Enter avg : ");
		float avg = Float.parseFloat(br.readLine());
		System.out.println("Enter first letter :");
		char ch = (char)br.read();
		System.out.println(name);
		System.out.println(jerNo);
		System.out.println(avg);
		System.out.println(ch);
		br.skip(1);
		System.out.println("Enter flat no");
		int flatNo = Integer.parseInt(br.readLine());
		System.out.println(flatNo);

	}
}
