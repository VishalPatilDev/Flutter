import java.util.*;
class ClassRoom{
	int rollNo = 0;
	String name = null;
	ClassRoom(int rollNo , String name){
		this.rollNo = rollNo;
		this.name = name;
	}
	public String toString(){
		return rollNo + "," + name;
	}
}
class SortByName implements Comparator{
	public int compare(Object obj1,Object obj2){
		return ((ClassRoom)obj1).name.compareTo(((ClassRoom)obj2).name);
	}
}
class SortByNo implements Comparator{
	public int compare(Object obj1,Object obj2){
		return ((ClassRoom)obj1).rollNo - ((ClassRoom)obj2).rollNo;
	}
}
class Client{
	public static void main(String [] args){
		ArrayList al = new ArrayList();
		al.add(new ClassRoom(1,"Vishal"));
		al.add(new ClassRoom(20,"Rahul"));
		al.add(new ClassRoom(6,"Ashish"));
		al.add(new ClassRoom(3,"Hitesh"));
		al.add(new ClassRoom(9,"Jitesh"));
		System.out.println(al);
		Collections.sort(al,new SortByName());
		System.out.println(al);
		Collections.sort(al,new SortByNo());
		System.out.println(al);
	}
}

