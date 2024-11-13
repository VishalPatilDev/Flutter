import java.util.*;
class Demo{
	public static void main(String [] args){
		ArrayList<String> al = new ArrayList<String>();
		al.add("Vishal");
		al.add("Rahul");
		al.add("Satish");
		TreeSet<String> ts = new TreeSet<String>(al);
		ts.add("Ashish");
		System.out.println(ts);
		
	}
}
