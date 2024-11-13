import java.util.*;
class Platform {
	String str = null;
	int foundYear = 0;
	Platform(String str , int foundYear){
		this.str =str;
		this.foundYear=foundYear;
	}
	public String toString(){
		return "{" + str+":"+foundYear+"}";
	}
}
class SortByName implements Comparator {
	public int compare(Object obj1,Object obj2){
		return ((Platform)obj1).str.compareTo(((Platform)obj2).str);
	}
}
class TreeMapDemo{
	public static void main(String [] args){
		TreeMap tm = new TreeMap(new SortByName());
		tm.put(new Platform("Youtube",2005),"Google");
		tm.put(new Platform("Instagram",2010),"Meta");
		tm.put(new Platform("Facebook",2004),"Meta");
		tm.put(new Platform("ChatGPT",2022),"OpenAI");
		System.out.println(tm);

	}
}
