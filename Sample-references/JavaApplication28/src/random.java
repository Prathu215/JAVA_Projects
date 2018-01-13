
import java.util.Random;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author prathyusha
 */
public class random {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Random rand=new Random();
        int n;
        for(int i=0;i<10;i++)
        {
            n=rand.nextInt(50)+1;
            System.out.print(n+":");
            if(n%2==0)
            {
                System.out.print("Even");
            }
            else
            {System.out.print("Odd");
                        }
            System.out.println();
        }
        
    }
    
}
