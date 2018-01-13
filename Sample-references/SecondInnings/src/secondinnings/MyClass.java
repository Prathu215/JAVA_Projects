
package secondinnings;


 class MyClass implements Runnable 
{
    @Override
    public void run(){
        System.out.println("hello jii");
    }
    
 }
class Demo{    
public static void main(String[] args){
        MyClass r= new MyClass();
        Thread t= new Thread();
        t.start();
        
    }

}  

