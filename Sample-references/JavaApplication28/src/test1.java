/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author prathyusha
 */
public class test1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int a =6,b=7;
        
        String Name1="hello";
        String Name2="world";
        
        
        System.out.println(add(a,b));
        System.out.println(add(Name1,Name2));        
    }

   public static int add(int a, int b) {
        return a+b; //To change body of generated methods, choose Tools | Templates.
    }
    public static String add(String name1, String name2) {
        return (name1+name2); //To change body of generated methods, choose Tools | Templates.
    }
    
}
