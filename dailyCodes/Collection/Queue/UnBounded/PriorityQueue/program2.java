import java.util.*;
class PQueueDemo {
	public static void main(String [] args){
		PriorityQueue pq = new PriorityQueue();
		pq.offer("Kanha");
		pq.offer("Rahul");
		pq.offer("Sachin");
		pq.offer("Vishal");
		pq.offer("Badhe");
		System.out.println(pq);
	}
}
