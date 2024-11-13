import java.util.*;
import java.io.*;
class SToken{
	public static void main(String[]args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter society name , wing , flatNo : ");
		String info = br.readLine();
		System.out.println(info);
		StringTokenizer st = new StringTokenizer(info , " ");
		String token1 = st.nextToken();
		String token2 = st.nextToken();
		String token3 = st.nextToken();
		System.out.println("Society = " +token1);
		System.out.println("wing = "+token2);
		System.out.println("flatNo = "+token3);
	}	
}
