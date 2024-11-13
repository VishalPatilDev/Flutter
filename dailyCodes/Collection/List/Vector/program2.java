import java.util.*;
class VectorDemo{
	public static void main(String [] args){
		ArrayList al = new ArrayList();
		al.add("vishal");
		al.add("patil");
		
		
		Vector v = new Vector(al);
		v.addElement(5);
		System.out.println(v);
	}
}
		
