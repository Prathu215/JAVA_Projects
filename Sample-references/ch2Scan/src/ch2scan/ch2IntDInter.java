
package ch2scan;
import java.util.Scanner;


public class ch2IntDInter /*IntegerDemoInterractive program 6th in chp2*/
{
    public static void main(String[] args){
     int anInt;
     byte aByte;
     short aShort;
     long aLong;
     String name;
        Scanner input = new Scanner(System.in);
    System.out.print("Please enter an integer >> ");
    anInt = input.nextInt();
    System.out.print("please enter a byte integer >> ");
    aByte = input.nextByte();
    System.out.print("please enter a short integer >> ");
    aShort = input.nextShort();
    System.out.print("please enter a long integer >> ");
    aLong = input.nextLong();
    System.out.print("please enter your name >> ");
    name = input.nextLine();
    System.out.println("Thank you, " + name);
    
    }
    
    
}
