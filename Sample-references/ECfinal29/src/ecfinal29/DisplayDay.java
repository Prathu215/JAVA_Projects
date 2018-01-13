package ecfinal29;

public class DisplayDay {

    
     public static void main(String[] args)
        {
		String days[] = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
		System.out.print("Enter the number for the day:");
		int name = Integer.parseInt(System.console().readLine());
		System.out.print(days[name]);
       }
}
    
    

