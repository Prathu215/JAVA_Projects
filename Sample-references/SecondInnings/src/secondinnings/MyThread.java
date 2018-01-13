
package secondinnings;


public class MyThread extends Thread
{
public void run(){
    System.out.println("hii");
    for(int i=0;i<4;i++){
       System.out.println("hii ricky"); 
    }
}    
}
class ThreadDemo{
    
    public static void main(String[] args)
    {
        MyThread t= new MyThread();
        t.start();
        
    }
}
