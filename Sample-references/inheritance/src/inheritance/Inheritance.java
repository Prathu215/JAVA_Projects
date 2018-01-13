package inheritance;


public class Inheritance 
{

  
    public static void main(String[] args) 
    {
        Bicycle obj1=new Bicycle(2,50);
        MountainBike obj2=new MountainBike(3,60,5);
        
        System.out.println("Details of Bicycle: \n"+obj1.toString());
        System.out.println("Details of MountainBike: \n"+obj2.toString());
        
    }
    
}


