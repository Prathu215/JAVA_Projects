/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package linkedlist;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author prathyusha
 */
public class Reverselist 
{
    public static void main(String args[])
    {
        Character c[]={'p','r','a','t','h','y','u','s','h','a'};
        
        List<Character> list=Arrays.asList(c);
        
        System.out.println("chars of first linked list: "+list);
        
        Collections.sort(list,Collections.reverseOrder());
        
        System.out.println("characters in reverse order: "+list);
    }
    
}
