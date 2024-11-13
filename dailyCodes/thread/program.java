class MyThread extends Thread{
	MyThread(ThreadGroup tg,String str){
		super(tg,str);
	}
	public void run(){
		System.out.println(Thread.currentThread());
		try{
			Thread.sleep(2000);
		}catch(InterruptedException ie){
		}
	}
}
class ThreadGroupDemo{
	public static void main(String [] args )throws InterruptedException{
		ThreadGroup pThreadGP = new ThreadGroup("India");
		MyThread t1 = new MyThread(pThreadGP,"Maha");
		MyThread t2 = new MyThread(pThreadGP,"Goa");
		t1.start();
		t2.start();
		ThreadGroup cThreadGP = new ThreadGroup(pThreadGP,"Pakistan");
		MyThread t3 = new MyThread(cThreadGP,"Lahore");
		MyThread t4 = new MyThread(cThreadGP,"Karachi");
		t3.start();
		t4.start();
		System.out.println(Thread.activeCount());
	}
}
