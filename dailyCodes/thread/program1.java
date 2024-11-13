class MyThread implements Runnable{
	public void run(){
		System.out.println(Thread.currentThread());
		try{
			Thread.sleep(3000);
		}catch(InterruptedException ie){
			System.out.println(ie.toString());
		}
	}
}
class ThreadGroupDemo{
	public static void main(String [] args)throws InterruptedException{
		ThreadGroup pThreadGP = new ThreadGroup("India");
		MyThread obj = new MyThread();
		MyThread obj2 = new MyThread();
		Thread t1 = new Thread(pThreadGP,obj,"Maha",4000);
		Thread t2 = new Thread(pThreadGP,obj2,"Goa",3000);
		t1.start();
		t2.start();
		ThreadGroup cThreadGP = new ThreadGroup(pThreadGP,"Pakistan");
		MyThread obj3 = new MyThread();
		MyThread obj4 = new MyThread();
		Thread t3 = new Thread(cThreadGP,obj3,"Lahore");
		Thread t4 = new Thread(cThreadGP,obj4,"Karachi");
		t3.start();
		t4.start();
	}
}
		
