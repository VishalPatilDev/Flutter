//User defined class
import java.util.*;
class Project implements Comparable{
	String projName = null;
	int teamSize =0 ;
	int duration = 0 ;
	Project (String projName , int teamSize , int duration){
		this.projName = projName;
		this.teamSize = teamSize;
		this.duration = duration;
	}
	public int compareTo(Object obj){
		return projName.compareTo(((Project)obj).projName);
	}
	public String toString(){
		return "{" + projName + "," + teamSize + ","+duration + "}";
	}
}
class PQueueDemo{
	public static void main(String [] args){
		PriorityQueue pq = new PriorityQueue();
		pq.offer(new Project("Project1",35,30));
		pq.offer(new Project("Project2",40,75));
		pq.offer(new Project("Project3",15,90));
		System.out.println(pq);
	}
}
