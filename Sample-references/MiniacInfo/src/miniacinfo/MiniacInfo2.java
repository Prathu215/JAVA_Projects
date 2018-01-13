
package miniacinfo;
import java.util.Scanner;

public class MiniacInfo2 {

   
    public static void main(String[] args) {
    displayInfo();
    computerDiscountInfo();
    double price;
    double discount;
    double savings;
    Scanner Keyboard = new Scanner(System.in);
    System.out.print("Enter cutoff price for discount >> ");
    price = Keyboard.nextDouble();
    
   System.out.print("Enter discount rate as a whole number >>  ");
   discount =  Keyboard.nextDouble();
     savings = computerDiscountInfo(price, discount);
       System.out.println("Special this week on any service over "  + price);
       System.out.println("Discount of " + discount + "percent");
       System.out.println("That's a savings of at least $" + savings);
  
           }
    public static void displayInfo(){
        System.out.println("Miniac Day Spa wants to pamper you.");
        System.out.println("We will make you look good.");
    }
    public static void computerDiscountInfo(){
      
    }
}
