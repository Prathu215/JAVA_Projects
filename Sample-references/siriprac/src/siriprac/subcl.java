/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package siriprac;

/**
 *
 * @author prathyusha
 */
class one
{
    void show2()
    {
        System.out.println("super class method");
    }
}
class two extends one
{
    void show1()
    {
        System.out.println("sub  class method");
    }
}
public class subcl {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        one t=new one();
        System.out.println(t);
        
        two o;
        o=new two();
        System.out.println(o);
        //two t=(two)o;
        o.show2();
        o.show1();
                
    }
    
}
