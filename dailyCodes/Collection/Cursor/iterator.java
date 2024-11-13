import java.util.*;
class IteratorDemo{
	public static void main(String [] args){
		ArrayList al = new ArrayList();
		al.add("kanha");
		al.add("Rahul");
		al.add("Ashish");
		Iterator itr = al.iterator();
		while(itr.hasNext()){
			if("Rahul".equals(itr.next()))
				itr.remove();
		}
		System.out.println(al);
	}
}
