
package ch2scan;

import javax.swing.JOptionPane;


public class AirLDialog /* AirLineDialog and one of the last but one program of javaswing*/
{
    public static void main(String[] args)
    {
        int selection;
        boolean isYes;
        selection = JOptionPane.showConfirmDialog(null, "DO you want to upgrade to first class?");
        isYes = (selection == JOptionPane.YES_OPTION);
        JOptionPane.showMessageDialog(null, "You responded " + isYes);
        
    }
}
