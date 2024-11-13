import java.util.*;
class ArrayListDemo{
	public static void main(String [] args){
		ArrayList al = new ArrayList();
		al.add(10);
		al.add(20);
		Iterator itr = al.iterator();
		System.out.println(itr.getClass().getName());
	}
}
