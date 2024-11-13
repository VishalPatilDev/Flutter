import java.util.*;
class IteratorMapDemo{
	public static void main(String[] args){
		SortedMap tm = new TreeMap();
		tm.put("Ind","India");
		tm.put("Pak","Pakistan");
		tm.put("SL","Srilanka");
		tm.put("Aus","Austalia");
		tm.put("Ban","Bangladesh");
		System.out.println(tm);
		Set <Map.Entry> data = tm.entrySet();
		Iterator<Map.Entry> itr = data.iterator();
		while(itr.hasNext()){
		//	System.out.println(itr.next());
			Map.Entry abc = itr.next();
			System.out.println(abc.getKey()+":"+abc.getValue());
		}
	}
}
