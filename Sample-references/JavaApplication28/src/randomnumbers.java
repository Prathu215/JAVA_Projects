
import java.util.Random;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author prathyusha
 */
public class randomnumbers {

    public static void main(String[] args) {
      int[] oddNums = new int[10];

    for (int index = 0; index < oddNums.length; index++) {
        oddNums[index] = (int) (Math.random()*99);
    }

    System.out.print("ODD: ");

    for (int index = 0; index < oddNums.length; index++) {
        System.out.print(oddNums[index] + " ");
    }

    //Even Numbers
    int[] evenNums = new int[10];

    for (int index = 0; index < evenNums.length; index++) {
        evenNums[index] = (int) (Math.random()*99);
    }

    System.out.print("\nEVEN: ");

    for (int index = 0; index < evenNums.length; index++) {
        System.out.print(evenNums[index] + " ");
    }
    }
}
