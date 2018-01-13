/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author prathyusha
 */
public class secnd {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        // TODO code application logic here
        
        //String[]a=new String[]{"This","program","gives","sample","code","for","string","Tokenizer"};
        System.out.println("enter the byte");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int b= Integer.parseInt(br.readLine());
        int []d=new int[b];
        for(int u=0;u<b;u++)
        {
            System.out.println("enter the values:");
            d[u]= Integer.parseInt(br.readLine());
        }
        int temp;
        int f1;
        int f2;
        for(int i=0;i<b-1;i++)
        {
            for(int h=0;h<b-1;h++)
            {
                if(d[h]>d[h+1])
                {
                    temp=d[h];
                    d[h]=d[h+1];
                    d[h+1]=temp;
                    
                }
            }
        }
        for(int u=0;u<b;u++)
        {
            System.out.println("values are :"+d[u]);
        
        
        
        
        /*for(int x=0;x<b.length;x++)
        {
            sb.append(a[x]).append(" ");
        }*/
       
    }
    
}
}
