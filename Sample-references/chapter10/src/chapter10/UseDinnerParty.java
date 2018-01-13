
package chapter10;
import java.util.*;

public class UseDinnerParty

{

public static void main(String[] args)

{

int guests;

int choice;

DinnerParty aDinnerParty = new DinnerParty();

Party aParty = new Party();

Scanner keyboard = new Scanner(System.in);

System.out.print("Enter number of guests for the party >> ");

guests = keyboard.nextInt();

aParty.setGuests(guests);

System.out.println("The party has " + aParty.getGuests() + " guests");

aParty.displayInvitation();

System.out.print("Enter number of guests for the dinner party >> ");

guests = keyboard.nextInt();

aDinnerParty.setGuests(guests);
}
}

