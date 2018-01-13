
package ecfinal29;
import java.util.Scanner;

public class far2cels {

   
    public static void main(String[] args) 
    {
       
        int celsius,farenheit;
        System.out.println("Enter the temperature (celsius) you want to convert");
        Scanner input=new Scanner(System.in);
        farenheit=input.nextInt();
        
        celsius=(((farenheit-32)*5)/9);
        
        System.out.println("Temperature in Celsius is = " +  celsius);
        
    }
    
}
