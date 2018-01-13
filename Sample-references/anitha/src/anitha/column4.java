package anitha;

/**
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*package anitha;

/**
 *
 * @author prathyusha
 */
import java.sql.*;
import java.lang.*;
import java.util.StringTokenizer;
public class column4{	
public static void main(String[] args) 
{
String query1="insert into ani2(";
String query2=")values(";
String query3=")";
try {		
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");						  
//Connection conn = DriverManager.getConnection("jdbc:odbc:dsn1","","");     			
//Statement s = conn.createStatement();		
String msg="To achieve high quality segmentation we propose a generic tweet frame work named learns both global and local contexts and has the ability of learning from pseudo feed back they posted for information sharing and communication the named entities and semantic phrases are well preserved in them.local context are highly time sensitie so that many emerging phrases like published with in a short time period containing it is not difficult to recognize investigate features and local collocation of named entity and link it to an entry in a knowledge base.as an application we prpose and evaluate two segment based algorithms are unsupervised in nature and take segments as input in which targeted twitter streams by applying random walk with the assumption that named entities are more likely to co occur together.it is more reiable than term dependency in guiding the segmentation process this finding opens opportunities for tools developed for formal text to be applied to tweets which are beleived to be much m            oe noisy than formal text.it is an develop features with an applied yag set that annotate the data in the form of segments that are named entity with an input which are based on entity identificatin and entity extraction with an named entities";
String rowMsgs[]=msg.split(".?");
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
s.executeUpdate(addRow);
i=0;
columnNames="";
columnValues="";
}
i++;
}

columnNames =columnNames.substring(0,columnNames.length()-1);
columnValues =columnValues.substring(0,columnValues.length()-1);
String addRow=query1+columnNames+query2+columnValues+query3;
columnNames="";
columnValues="";
System.out.println(addRow);
s.executeUpdate(addRow);

}
s.close();
conn.close();	
} 
catch (Exception ex)
{			
System.out.println("catch"+ex);		
}	
}
}
