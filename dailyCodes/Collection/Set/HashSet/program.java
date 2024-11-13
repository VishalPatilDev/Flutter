import java.util.*;
class HashDemo{
	public static void main(String [] args){
		HashSet hs = new HashSet();
		hs.add(10);
		hs.add(20);
		hs.add(new Integer(10));
		hs.add(new Integer(20));
		System.out.println(hs);
	}
}
