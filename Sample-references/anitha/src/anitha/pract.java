/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author prathyusha
 */
public class pract {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        // TODO code application logic here
        File f = null;
      boolean bool = false;
      
      
      
         // create new file
         f = new File("raam.txt");
         
         
         // tries to create new file in the system
        
         PrintWriter out = new PrintWriter("raam.txt");
         out.println("To achieve high quality segmentation we propose a generic tweet frame work named learns both global and local contexts and has the ability of learning from pseudo feed back they posted for information sharing and communication the named entities and semantic phrases are well preserved in them.local context are highly time sensitie so that many emerging phrases like published with in a short time period containing it is not difficult to recognize investigate features and local collocation of named entity and link it to an entry in a knowledge base.as an application we prpose and evaluate two segment based algorithms are unsupervised in nature and take segments as input in which targeted twitter streams by applying random walk with the assumption that named entities are more likely to co occur together.it is more reiable than term dependency in guiding the segmentation process this finding opens opportunities for tools developed for formal text to be applied to tweets which are beleived to be much more noisy than formal text.it is an develop features with an applied ");
         out.close();
         // prints
         //System.out.println("File created: "+bool);
    }
    
}
