
package ecfinal29;

/**
 *
 * @author prathyusha
 */
public class datebirth {

    public static void main(String[] args) 
    {
    String date = "05/12/2015";
    String month= date.substring(0,2);
    String day = date.substring(3,5);
    String year = date.substring(6);
    System.out.printf("Month: %s\nDay: %s\nYear %s\n",month,day,year);
    }
    
}
