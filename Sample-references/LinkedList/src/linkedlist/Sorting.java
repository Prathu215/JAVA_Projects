package linkedlist;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Sorting 
        
{
    
     public static void main(String[] args) 
     {
        Random rand = new Random();
         
        List<Integer> list = new ArrayList<>();

            for (int i = 0; i < 25; i++) 
            {
                list.add(rand.nextInt(100));
            }

        System.out.println("Unsorted Elements: "+list);
        Collections.sort(list);
        
        
        int sum=0;
        double avg=0;
        for(int i:list)
        {
            sum+=i;
              avg=(float)(sum/25);            
            
        }
      

        System.out.println("Sorted Elements: " + list);
        System.out.println(" Sum : "+sum);
        System.out.println(" Avg : "+avg);

    }

      
    
}