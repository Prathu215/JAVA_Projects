/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;

/**
 *
 * @author prathyusha
 */
public class third {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //String[]a=new String[]{"This", "program", "gives", "sample", "code", "for", "stringTokenizer"};
        String[]a=new String[]{"this is a bad day"};
        StringBuilder sb=new StringBuilder();
        
        System.out.println(a.length);
        for(int x=0;x<a.length;x++)
        {
            sb.append(a[x]).append(" ");
        };
        System.out.println(sb);
    
}
}