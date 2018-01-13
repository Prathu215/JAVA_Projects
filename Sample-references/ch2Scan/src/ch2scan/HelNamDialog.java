
package ch2scan;

import javax.swing.JOptionPane;


public class HelNamDialog /*this is last joption program we wil give inputs here HelloNameDialog*/
{
    public static void main(String[] args)
    {
        String result ;
        result = JOptionPane.showInputDialog(null,"what is your name?");/*similarly keep , n add wht is your area codeJoptionpane.QUESTION_MESSAGE);*/
        JOptionPane.showMessageDialog(null,"Helllo, " + result + "!");
    }
}
