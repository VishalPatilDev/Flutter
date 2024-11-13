//Using UserDefined class
import java.util.*;
class Project{
	String name = null;
	int teamSize = 0;
	int duration = 0;
	Project (String name , int teamSize,int duration){
		this.name = name;
		this.teamSize = teamSize;
		this.duration = duration;
	}
	public String toString(){
		return "{" + name + "," + teamSize + "," +duration + "}";
	}
}
class SortByDuration implements Comparator{
	public int compare(Object obj1,Object obj2){
		return(int)((Project)obj1).duration - (((Project)obj2).duration);
	}
}
class Client {
	public static void main(String [] args){
		PriorityQueue pq = new PriorityQueue();
		pq.offer(new Project("Project1",35,90));
		pq.offer(new Project("Project2",65,70));
		pq.offer(new Project("Project3",25,40));
		pq.offer(new Project("Project4",15,80));
		System.out.println(pq);
		Collections.sort(pq,new SortByDuration());
		System.out.println(pq);
	}
}
