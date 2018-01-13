package ch2datad;


public class ch2IntD {
    public static void main(String[] args) 
    {
        int anInt =12;
        byte aByte =12;
        short aShort =12;/* first keep as asual 12 n aftr dat chang as 1234*/
        long aLong = 1234567890987654321L; /* first keep as 12 and aftr 123457890 thn we wont get this so add the line of int anothrInt and dont forgt to add L at the end .*/
        int anotherInt = anInt * 10000000;
        System.out.println("The int is " + anInt);
        System.out.println("The byte is " + aByte);
        System.out.println("The short is " + aShort);
        System.out.println("The long is " + aLong);
        System.out.println("Another int is " + anotherInt);
    }
    
}
