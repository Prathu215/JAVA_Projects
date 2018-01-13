
package ch2scan;

import javax.swing.JOptionPane;

public class salryDialog /*Salary dialog ,in this we aask different questions forusing javaswing*/
{
    public static void main(String[] args)
    {
        String wageString , dependentsString;
        double wage,weeklyPay;
        int dependents;
        final double HOURS_IN_WEEK = 37.5;
        wageString =JOptionPane.showInputDialog(null, "Enter employee's hourly wage", "Salry dialog 1",JOptionPane.INFORMATION_MESSAGE);
        weeklyPay = Double.parseDouble(wageString) *
                HOURS_IN_WEEK;
        dependentsString = JOptionPane.showInputDialog(null, "How many dependednts?","Salry dialog2", JOptionPane.QUESTION_MESSAGE);
        dependents = Integer.parseInt(dependentsString);
        JOptionPane.showMessageDialog(null,"Weekly salry is $" + weeklyPay + "\nDeductions will be made for " + dependents + "dependents");
        
        
    }
}
