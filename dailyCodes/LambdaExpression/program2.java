interface Core2Web{
	String lang(int numCourse);
}
class Year2022{
	public static void main(String[] args){
		Core2Web c2w = (int xyz) -> "Bootcamp/Java/Python/OS"+":"+xyz;
		//Core2Web c2w = xyz..
		//Core2Web c2w = (xyz) ->
		System.out.println(c2w.lang(8));
	}
}
