//HashMap dominates Garbage Collector

import java.util.*;
class Demo{
	String str;
	Demo(String str){
		this.str = str;
	}
	public String toString(){
		return str;
	}
	public void finalize(){
		System.out.println("Notify");
	}
}
class GCDemo{
	public static void main(String [] args){
		Demo obj = new Demo("Core2web");
		Demo obj2 = new Demo("Biencaps");
		Demo obj3 = new Demo("Incubator");
		HashMap hm = new HashMap();
		hm.put(obj,2016);
		hm.put(obj2,2019);
		hm.put(obj3,2023);
		obj = null;
		obj2 = null;
		System.gc();
		System.out.println("In main");
		System.out.println(hm);
	}
}
