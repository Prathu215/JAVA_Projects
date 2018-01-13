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
public class anthafinal {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String s;
        s="GGCGAACGACGGGGATTGAACCCGCGCATGGTGGATTCACAATCCACTGCCTTGATCCACTTGGCTACAT\n" +
"CCGCCCATACCTATCTTTCTATTTTCTATAAATCTCTAGGAAAAAGTATAAAGCTAAAAGAATAAAGAAT\n" +
"TAAATCTCTATTTATTCCTCTTTTTATTATCTTATCTTATAATAGAAATGAAGGAAAAATTCAAGGATTT\n" +
"CGCGGAACATACATGAATTTAGTACACCACGAAACGAAAAAAAGTATGTTAATTAATCATGAACGAACCA\n" ;
        int distinct = 0 ;
        int distinct1=0;
        int distinct2=0;
        int distinct3=0;
        int distinct4=0;
        int distinct5=0;
        int distinct6=0

    for (int i = 0; i < s.length(); i++) {

        for (int j = 0; j < s.length(); j++) {

            if(s.charAt(i)==s.charAt(j))
            {
                distinct++;
                if(s.charAt(i)==s.charAt(j+1))
                {
                    distinct1++;
                    if(s.charAt(i)==s.charAt(j+2))
                    {
                        distinct2++;
                        if(s.charAt(i)==s.charAt(j+3))
                        {
                            distinct3++;
                            if(s.charAt(i)==s.charAt(j+4))
                            {
                                distinct4++;
                                 if(s.charAt(i)==s.charAt(j+5))
                            {
                                distinct5++;
                                 if(s.charAt(i)==s.charAt(j+6))
                            {
                                distinct6++;
                                
                            }
                        }
                    }
                }

            }
        }   
        System.out.println(s.charAt(i)+"--"+distinct);
                System.out.println(s.charAt(i)+" "+distinct1);
                System.out.println(s.charAt(i)+" "+distinct2);
                System.out.println(s.charAt(i)+" "+distinct3);
                System.out.println(s.charAt(i)+" "+distinct4);
                System.out.println(s.charAt(i)+" "+distinct5);
                System.out.println(s.charAt(i)+" "+distinct6);
                
        /*String d=String.valueOf(s.charAt(i)).trim();
        System.out.println(d);
        s=s.replaceAll(d,"");*/
        distinct = 0;
        distinct1 = 0;
        distinct2 = 0;
        distinct3 = 0;
        distinct4 = 0;
        distinct5 = 0;
        distinct6 = 0;
            }
        





    }
    
}
    }
