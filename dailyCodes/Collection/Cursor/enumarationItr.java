import java.util.*;
class EnumerationDemo{
	public static void main(String [] args){
		Vector v = new Vector();
		v.addElement("Kanha");
		v.addElement("Rahul");
		v.addElement("Rohit");
		Enumeration cursor = v.elements();
		System.out.println(cursor.getClass().getName());
		while(cursor.hasMoreElements()){
			System.out.println(cursor.nextElement());
		}
	}
}
