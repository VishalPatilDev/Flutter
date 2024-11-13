import java.util.*;
class HashMapDemo{
	public static void main(String [] args){
		HashMap hm = new HashMap();
		hm.put("Java",".java");
		hm.put("Python",".py");
		hm.put("Dart",".dart");
		System.out.println(hm);

		System.out.println(hm.get("Python"));

		System.out.println(hm.keySet());

		System.out.println(hm.values());

		System.out.println(hm.entrySet());
	}
}
