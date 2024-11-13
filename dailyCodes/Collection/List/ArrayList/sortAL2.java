import java.util.*;
class Movies{
	String name = null;
	double totColl = 0.0;
	float imdbRating = 0.00f;
	Movies(String name ,double totColl,float imdbRating){
		this.name = name;
		this.totColl = totColl;
		this.imdbRating = imdbRating;
	}
	public String toString(){
		return "{" + name + ","+totColl+","+imdbRating+"}";
	}
}
class SortByName implements Comparator{
	public int compare(Object obj1,Object obj2){
		return (((Movies)obj1).name.compareTo(((Movies)obj2).name));
	}
}
class SortByColl implements Comparator{
	public int compare(Object obj1,Object obj2){
		return (int)((((Movies)obj1).totColl) - (((Movies)obj2).totColl));
	}
}
class SortByIMDB implements Comparator{
	public int compare(Object obj1,Object obj2){
		return (int)((((Movies)obj1).imdbRating) - (((Movies)obj2).imdbRating));
	}
}
class UserListSort{
	public static void main(String [] args){
		ArrayList al = new ArrayList();
		al.add(new Movies("Ved",75.00,7.5f));
		al.add(new Movies("Sairat",100.00,8.9f));
		al.add(new Movies("Bajrangi",500.00,9.8f));
		System.out.println(al);
		Collections.sort(al,new SortByName());
		System.out.println(al);
		Collections.sort(al,new SortByColl());
		System.out.println(al);
		Collections.sort(al,new SortByIMDB());
		System.out.println(al);
	}
}
		
