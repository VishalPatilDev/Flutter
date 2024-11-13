//Reverse a String using two char arrays
class RevString{
	String str(String newStr){
		String str = new String("Core2Web");
		char[] c = str.toCharArray();
		char[] r = new char[str.length()];
		for(int i = c.length-1, j = 0; i >= 0 && j < c.length; i--,j++){
			r[j] = c[i];
		}
		String result = String.valueOf(r);
		return result;
	}

	public static void main(String [] args){
		String newStr = "";
		RevString obj = new RevString();
		String rev = obj.str(newStr);
		System.out.println(rev);

	
}
}
