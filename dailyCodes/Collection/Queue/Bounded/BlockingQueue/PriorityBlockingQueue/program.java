import java.util.concurrent.*;
import java.util.*;
class BQ{
	public static void main(String [] args)throws InterruptedException{
		BlockingQueue bq = new PriorityBlockingQueue(3);
		bq.put("Kanha");
		bq.put("Ashish");
		bq.put("Rahul");
		System.out.println(bq);
		bq.offer("Badhe",5,TimeUnit.SECONDS);
		System.out.println(bq);
	}
}
