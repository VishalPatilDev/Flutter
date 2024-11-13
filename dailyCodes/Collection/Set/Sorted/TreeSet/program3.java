import java.util.*;
class Movies implements Comparable{
	String movieName = null;
	float totCollec = 0.0f;
	Movies(String movieName,float totCollec){
		this.movieName = movieName;
		this.totCollec = totCollec;
	}
	public int compareTo(Object obj){
		return movieName.compareTo(((Movies)obj).movieName);
		
	}
	public String toString(){
		return movieName + "," +totCollec;
	}
	
}
class TreeSetDemo{
	public static void main(String [] args){
		TreeSet ts = new TreeSet();
		ts.add(new Movies("Gadar2",150.00f));
		ts.add(new Movies("OMG2",120.00f));
		ts.add(new Movies("Jailer",250.00f));
		ts.add(new Movies("OMG2",120.00f));
		System.out.println(ts);
	}
}

