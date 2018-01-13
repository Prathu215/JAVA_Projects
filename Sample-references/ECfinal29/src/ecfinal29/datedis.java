package ecfinal29;

import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.*;
import java.util.Date;
import java.text.ParseException;



public class datedis {


    public static void main(String[] args) throws ParseException
    {
        
        DateFormat inputDF = new SimpleDateFormat("MM/dd/yy");  // Declaring dateformat
        String Birthday;
        Birthday = "11/29/2016";  //Given date value
        
        Date bbdd = inputDF.parse(Birthday);   //Parsing the given value to date format
        Calendar cal = Calendar.getInstance();  // Creating a calendar variable to get instance
        
        cal.setTime(bbdd); // Setting the date to the calendar instance        
        System.out.println("Birthday:" +Birthday);  //Printing the given date
        
        int month = cal.get(Calendar.MONTH)+1; //Getting the month from calendar date and adding 1, as months will be 0-11
        System.out.println("Month:" + month);
        
        int day = cal.get(Calendar.DAY_OF_MONTH);
        System.out.println("day:" + day);
        
         int year = cal.get(Calendar.YEAR);
         System.out.println("year:" + year);
       
        
        
    }
    
}
