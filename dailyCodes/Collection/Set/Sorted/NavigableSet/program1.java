import java.util.*;
class NavigableSetDemo{
	public static void main(){
		NavigableSet ns = new NavigableSet();
		ns.add(10);
		ns.add(30);
		ns.add(14);
		ns.add(27);
		ns.add(23);
		
		//lower()
		System.out.println(ns.lower(23));//14

		//floor()
		System.out.println(ns.floor(23));//23

		//ceiling()
		System.out.println(ns.ceiling(27));//23
		System.out.println(ns.ceiling(25));//27

		//higher()
		System.out.println(ns.higher(27));//30

		//descendingSet()
		System.out.println(ns.descendingSet());//[30,27,23,14,10]

		//iterator
		Iterator itr = ns.iterator();
		while(itr.hasNext()){
			System.out.println(itr.next());
		}

		//descendingIterator
		Iterator itr1 = ns.descendingIterator();
		while(itr1.hasNext()){
			System.out.println(itr.next());
		}

		//subSet()
		System.out.println(ns.subSet(10,true,27,false));//[10,14,23]

		//pollFirst()
		System.out.println(ns.pollFirst());//10

		//pollLast()
		System.out.println(ns.pollLast());//30
		System.out.println(ns);//[14,23,27]
	}
}

