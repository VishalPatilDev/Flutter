import java.util.*;
class VectorDemo{
	public static void main(String[] args){
		Vector v = new Vector();
		v.addElement(10);
		v.addElement(20);
		v.addElement(30);
		v.addElement(40);

		v.addElement(50);
		v.addElement(60);
		v.addElement(70);
		v.addElement(80);
		v.addElement(90);
		v.addElement(100);         //default capacity of vector is 10 . If we add more than 10 elements in a vector the capacity will be 20.
		v.addElement(110);
		System.out.println(v.capacity());
		System.out.println(v);
	}
}
