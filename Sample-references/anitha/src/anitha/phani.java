/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package anitha;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author prathyusha
 */
public class phani {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        beancls def=new beancls();
        def.setAge(10);
        def.setName("sirisha");
        def.setSkill("bowler");
        beancls sez=new beancls();
        sez.setAge(13);
        sez.setName("prathsa");
        sez.setSkill("batman");
        
        Map<String, beancls> end=new HashMap<String, beancls>();
        end.put("a",def);
        end.put("b",sez);
        
        //retreving values
        
        System.out.println("Fetching Keys and corresponding [Multiple] Values n");
        for (Map.Entry<String, beancls> entry : end.entrySet()) {
            String key=entry.getKey();
            beancls obj=entry.getValue();
            System.out.println("the key value is" +key);
            System.out.println("player name: " +obj.getName()+" age: "+obj.getAge()+" skill: "+obj.getSkill());
                    
        }
                
    }
    
}
