import java.util.*;
class ArrayListDemo extends ArrayList{
	public static void main(String [] args){
		ArrayListDemo al = new ArrayListDemo();
		al.add(10);
		al.add(20.3f);
		al.add("vishal");
		al.add(20.3f);
		System.out.println(al);
		System.out.println(al.size());
		System.out.println(al.isEmpty());
		System.out.println(al.contains("vishal"));
		System.out.println(al.indexOf(20.3f));
		System.out.println(al.lastIndexOf(20.3f));
		System.out.println(al.get(3));
		al.add("Shahrukh , salman , amir");
		System.out.println(al);
		al.set(4,"rohit");
		System.out.println(al);
		ArrayList a2 = new ArrayList();
		a2.add("patil");
		al.addAll(a2);
		System.out.println(al);
		al.removeRange(3,5);
		System.out.println(al);
		Object arr[] = al.toArray();
		System.out.println(arr);
		for (Object data : arr){
			System.out.println(data + " ");
		}
	}
}
	
