/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;

import java.io.BufferedReader;
import java.io.FileReader;

/**
 *
 * @author prathyusha
 */
public class flecls {
    String ram="C:\\Users\\prathyusha\\Desktop\\kir.txt";
            BufferedReader br = new BufferedReader(new FileReader(ram));
        StringBuilder sb = new StringBuilder();
        String line = br.readLine();

        while (line != null) {
            sb.append(line);
            sb.append("\n");
            line = br.readLine();
        }
         sb.toString();
         System.out.println(sb);
    
}
