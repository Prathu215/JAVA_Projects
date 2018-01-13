package ch2scan;
import java.util.Scanner;

public class ch2scanGui  /*first prog in scnr GetUserInfo*/
{

    
    public static void main(String[] args) 
    {
     String name;
     int age;
     Scanner inputDevice = new Scanner(System.in); /* in this u hav to take alwys name first if not it ignores ur name incas int is first*/
     System.out.print("Please enter your name >> ");
     name=inputDevice.nextLine();
     System.out.print("please enter your age >> ");/* stil u wana do age 1st thn include name after "and you are " +age in below statement*/
     age = inputDevice.nextInt();
     System.out.println("Your name is " + name + " and you are " + age + "years old");
    }
    
}
