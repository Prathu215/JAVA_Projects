
package ecfinal29;
import java.io.*;

public class WeekdayName

{
public static void main(String args[]) throws IOException

{
    String days[]={"","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
   
    System.out.println("Enter a number between 1 and 7 : ");
    
    BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

    int d=Integer.parseInt(br.readLine());
    
if((d>7)||(d<1))
 
    System.out.println("invalid number");   

    else
    
    System.out.println("weekday name is :" + days[d]);

}
}