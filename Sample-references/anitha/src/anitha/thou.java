/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

/**
 *
 * @author prathyusha
 */
public class thou {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
       
        
        /* PrintWriter out = new PrintWriter("raam.txt");
         out.println("To achieve high quality segmentation we propose a generic tweet frame work named learns both global and local contexts and has the ability of learning from pseudo feed back they posted for information sharing and communication the named entities and semantic phrases are well preserved in them.local context are highly time sensitie so that many emerging phrases like published with in a short time period containing it is not difficult to recognize investigate features and local collocation of named entity and link it to an entry in a knowledge base.as an application we prpose and evaluate two segment based algorithms are unsupervised in nature and take segments as input in which targeted twitter streams by applying random walk with the assumption that named entities are more likely to co occur together.it is more reiable than term dependency in guiding the segmentation process this finding opens opportunities for tools developed for formal text to be applied to tweets which are beleived to be much more noisy than formal text.it is an develop features with an applied ");
         out.close();*/
    // TODO code application logic here
    String query1="insert into ani2(";
String query2=")values(";
String query3=")";
    String name="C:\\Users\\prathyusha\\Desktop\\kir.txt";
            BufferedReader br = new BufferedReader(new FileReader(name));
        StringBuilder sb = new StringBuilder();
        String line = br.readLine();

        while (line != null) {
            sb.append(line);
            sb.append("\n");
            line = br.readLine();
        }
        br.close();
        
        String msg= sb.toString();
        System.out.println(msg);
         String rowMsgs[]=msg.split(".");
         for(int j=0;j<rowMsgs.length;j++)
         {
             System.out.println(rowMsgs[j]);
         }
String columnNames="";
String columnValues="";
for(int count=0;count<rowMsgs.length;count++)
{
StringTokenizer st = new StringTokenizer(rowMsgs[count]," ");
int i=1;
System.out.println("count"+count);
while(st.hasMoreTokens())
{

System.out.println("i"+i);
columnNames=columnNames+"C"+i+",";
columnValues=columnValues+"'"+st.nextToken()+"',";

if(i==100)
{
columnNames =columnNames.substring(0,columnNames.length()-1);
columnValues =columnValues.substring(0,columnValues.length()-1);
String addRow=query1+columnNames+query2+columnValues+query3;
System.out.println(addRow);
         System.out.println(sb);
         
       
    
    }
i++;
    
}

}
    }
}
