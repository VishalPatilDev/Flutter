import java.util.*;
class Employee{
	String name = null;
	float sal = 0.0f;
	Employee(String name,float sal){
		this.name = name;
		this.sal = sal;
	}
	public String toString(){
		return "{" + name +":" + sal + "}";
	}
}
class SortByName implements Comparator<Employee>{
	public int compare(Object obj1,Object obj2){
		return ((obj1)name).compareTo(obj2.name);
	}

}
class SortBySal implements Comparator<Employee>{
	public int compare(Object obj1,Object obj2){
		return (int)(obj1.sal - obj2.sal);
	}
}
class Client{
	public static void main(String [] args){
		ArrayList<Employee> al = new ArrayList<Employee>();
		al.add(new Employee("Kanha",20000.00f));
		al.add(new Employee("Rahul",25000.00f));
		al.add(new Employee("Ashish",17500.00f));
		al.add(new Employee("Badhe",15000.00f));
		System.out.println(al);
		Collections.sort(al,new SortByName());
		System.out.println(al);
		Collections.sort(al,new SortByName());
		System.out.println(al);
	}
}

