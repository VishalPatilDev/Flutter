



class SwitchDemo{
	public static void main(String [] args){
		String str = "veg";
		switch(str){
			case "veg":
				String str1 = "main course";
				switch(str1){
					case "starter":System.out.println("starter");
						       break;
					case "main course": System.out.println("main course");
							    break;

				}
				break;
			case "non veg":
				String str2 = "starter";
				switch(str2){
					case "starter": System.out.println("starter");
							break;
					case "main course" : System.out.println("main course");
							     break;
				}
				break;



		}
		System.out.println("after switch");
	}
}
