
package chapter6;
import java.util.Scanner;
public class AssignVolunteer5 
{

    
    public static void main(String[] args)
    {
       
        int donationType;
        String volunteer;
        String message;
        final int CLOTHING_CODE = 1;
        final int FURNITURE_CODE = 2; 
        final int ELECTRONICS_CODE = 3;
        final int OTHER_CODE = 4;
        final String CLOTHING_PRICER = "Regina" ;
        final String FURNITURE_PRICER = "Walter" ;
        final String ELECTRONICS_PRICER = "Lydia";
        final String OTHER_PRICER = "Marco";
        
        Scanner input = new Scanner(System.in);
        System.out.println("What type of donation is this?");
        System.out.print("Enter" + CLOTHING_CODE + "for clothing," + OTHER_CODE + "for anything else...");
        donationType = input.nextInt();
        
     System.out.print("Enter an integer...");
     while(donationType < CLOTHING_CODE || donationType > OTHER_CODE)
     {
         System.out.println("You entered " + donationType + " which is not a valid donation type ");
         System.out.print("Please enter a value between " + CLOTHING_CODE + " and " + OTHER_CODE + "... ");
         System.out.print("Enter an integer... ");
         donationType = input.nextInt();
     }
     switch(donationType)
     {
         case(CLOTHING_CODE):
             volunteer = CLOTHING_PRICER;
             message = "a clothing donation";
         break;
         case(FURNITURE_CODE):
             volunteer = FURNITURE_PRICER;
             message = "a furniture donation";
             break;
         case(ELECTRONICS_CODE):
             volunteer = ELECTRONICS_PRICER;
             message = " an electronics donation";
             break;
         case(OTHER_CODE):
             volunteer = OTHER_PRICER;
             message = " other donations";
             break;
         default:
             volunteer = "invalid";
             message = "an invalid donation type";
     }
       
    }
    
}
