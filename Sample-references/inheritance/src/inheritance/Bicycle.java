package inheritance;



public class Bicycle 
{
    int gear,speed;
    
    public Bicycle()
    {
        this.gear=1;
        this.speed=20;
        
    }
    public Bicycle(int gear,int speed)
    {
        this.gear=gear;
        this.speed=speed;
    }
    
    @Override
    public String toString()
    {
        return String.format("Gear: %d%n Speed: %d%n", gear,speed);
        
    }
    
    public int getGear()
    {
        return gear;
        
    }
    public int getSpeed()
    {
        return speed;
    }

    /**
     *
     * @param gear
     */
    public void setGear(int gear)
    {
        if(gear<0)
            throw new IllegalArgumentException("Speed cannot be 0");
                
        
        this.gear=gear;
            
    }

    /**
     *
     * @param s
     * @return 
     */
    public int applybrake(int s)
    {
        speed=speed-s;
        return speed;
    }  
           
   
    }
    

