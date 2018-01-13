package inheritance;




public class MountainBike extends Bicycle
{
    int seatHeight;
    
    public MountainBike()
    {
    super();
    this.seatHeight=5;
    }

    /**
     *
     * @param gear
     * @param speed
     * @param seatHeight
     */
    public MountainBike(int gear,int speed,int seatHeight)
    {
        super(gear,speed);
             
        this.seatHeight=seatHeight;
        
    }
    @Override
    public String toString()
    {
        return String.format("Gear: %d%n Speed:%d%n SeatHeight: %d",gear,speed,seatHeight);
        
    }
    public int getseatHeight()
    {
        return seatHeight;
        
    }

    /**
     *
     * @param seatHeight
     */
    public void setseatHeight(int seatHeight)
    {
        if(seatHeight<0)
                    throw new IllegalArgumentException("Seat height cannot be less than 0");
                
        this.seatHeight=seatHeight;
        
    }
    }
    

