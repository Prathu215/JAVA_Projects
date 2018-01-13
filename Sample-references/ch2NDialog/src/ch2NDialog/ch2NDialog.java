package ch2NDialog;
import javax.swing.JOptionPane; /*2nd program in chapter and name as NumbersDialog and dont create main class*/

public class ch2NDialog 
{
  public static void main(String[] args)
  {
      int creditDays = 30;
      JOptionPane.showMessageDialog(null,"" + creditDays);
      JOptionPane.showMessageDialog(null, "Every bill is due in " + creditDays + "days");
}
}
