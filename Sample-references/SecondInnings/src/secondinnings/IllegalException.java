
package secondinnings;


public class IllegalException extends Thread 
{

public static void main(String[] args){
    
    IllegalException t= new IllegalException();
    t.start();
     t.start();//because of this you will get illegal thread state exception.
    
}    
    
}
