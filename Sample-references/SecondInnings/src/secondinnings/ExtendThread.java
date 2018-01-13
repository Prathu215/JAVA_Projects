
package secondinnings;


public class ExtendThread extends Thread
{
    public void run(){
        System.out.println("business logic of thread");
        System.out.println("body of thread");
        for(int i=0;i<10;i++){
            System.out.println("te yamo");
        }
        
    }
    
    public static void main(String[] args){
        ExtendThread t= new ExtendThread();
         for(int i=0;i<3;i++){
            System.out.println("parfavore");
        }
        t.start();
       
    }
}


