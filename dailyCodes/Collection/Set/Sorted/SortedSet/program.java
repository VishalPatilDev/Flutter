import java.util.*;
class SortedSetDemo{
	public static void main(String [] args){
		SortedSet ss = new TreeSet();
		ss.add("Kanha");
		ss.add("Ashish");
		ss.add("Rahul");
		ss.add("Vishal");
		System.out.println(ss);
		System.out.println(ss.headSet("Rahul"));
		System.out.println(ss.tailSet("Ashish"));
		System.out.println(ss.subSet("Ashish","Rahul"));
	}
}
