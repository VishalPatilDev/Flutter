import java.util.*;
class ArrayListDemo{
	public static void main(String [] args){
		ArrayList al = new ArrayList();
		al.add("Ashish");
		al.add("Satish");
		al.add("Manish");
		System.out.println(al);
		Collections.sort(al);
		System.out.println(al);
	}
}
