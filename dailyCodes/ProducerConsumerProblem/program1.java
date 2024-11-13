import java.util.concurrent.*;
class Producer implements Runnable{
	BlockingQueue bq = null;
	Producer (BlockingQueue bq){
		this.bq = bq;
	}
	public void run(){
		for(int i=1;i<=10;i++){
			try{
				bq.put(i);
				System.out.println("Produce"+i);
			}catch(InterruptedException ie){
			}
			try{
				Thread.sleep(1000);
			}catch(InterruptedException ie){
			}
		}
	}
}
class Consumer implements Runnable{
	BlockingQueue bq = null;
	Consumer(BlockingQueue bq){
		this.bq = bq;
	}
	public void run(){
		for(int i=1;i<=10;i++){
			try{
				bq.take();
				System.out.println("Consume"+i);
			}catch(InterruptedException ie){
			}
			try{
				Thread.sleep(7000);
			}catch(InterruptedException ie){
			}
		}
	}
}
class ProducerConsumer{
	public static void main(String [] args){
		BlockingQueue bq = new ArrayBlockingQueue(3);
		Producer produce = new Producer(bq);
		Consumer consume = new Consumer(bq);
		Thread producerThread = new Thread(produce);
		Thread consumeThread = new Thread(consume);
		producerThread.start();
		consumeThread.start();
	}
}
