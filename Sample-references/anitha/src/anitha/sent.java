/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;
import java.util.Scanner;

/**
 *
 * @author prathyusha
 */
public class sent {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        System.out.println("enter the words:");
        Scanner sc=new Scanner(System.in);
        String[] a = sc.nextLine().split(" ");
        
        StringBuilder sb=new StringBuilder();
       int x=a.length;
        System.out.println(x);
        int i;
        for(i=x;x>0;x--)
        {
            String word=a[i-x];
            sb.append(word).append(" ");
         }
        System.out.println(sb);
        
       
    }
    
}
