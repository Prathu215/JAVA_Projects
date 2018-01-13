
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author prathyusha
 */
public class test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      int n ,i,j;
      Scanner in = new Scanner(System.in);
 
      System.out.println("Enter the number of rows of floyd's triangle you want");
      n = in.nextInt();
 
      System.out.println("Floyd's triangle :-");
 
      for ( i= 1 ; i <= n ; i++ )
      {
         for ( j = 1 ; j<= i ; j++ )
         {
            System.out.print(" *");
         }
 
         System.out.println();
         // TODO code application logic here
    }
    }
}

