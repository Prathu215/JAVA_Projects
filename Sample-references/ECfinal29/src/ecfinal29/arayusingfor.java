
package ecfinal29;
import java.io.*; // importing io package
import java.util.Scanner; // importing scanner class in util package

public class arayusingfor //Creating a class 

{
public static void main(String args[]) throws IOException //Declaring main method with IO exception

{
    //array declaration of type String.
    String days[]={"","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}; //Creating weekday names array ;with name days
   Scanner scan = new Scanner(System.in);//capturing the user input
    
 
   for(int i=5; 4<i;i++) //initializing a for loop
  {
		System.out.println("Enter an integer between 1 to 7 : "); //User to enter an input
               
		int d = scan.nextInt(); // storing the user input to an integer variable
		
                if((d>7)||(d<1))  //validating the user input
                
                {
                    System.out.println("invalid.");  //printing the validation failure message
                    
                }
            else		
                {
                    System.out.println("weekday name is :" + days[d]);  //printing the weekday name from the array days[]
                
		System.exit(0);  // exiting the else block
                }
}
}
}