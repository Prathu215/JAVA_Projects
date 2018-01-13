
package ecfinal29;

import java.util.Scanner;

public class celsi2far 
{

  public static void main(String[] args)
  {
    int farenheit;
    System.out.println("Enter the temperature you want to convert");
    
    Scanner input=new Scanner(System.in);
    int celsius = input.nextInt();
    farenheit = ((celsius*5)/9)+32;
    
    System.out.println("Temperature in farenheit is = " +  farenheit);
        
  }
    
}
