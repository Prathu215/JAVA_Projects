
public class Thread 
{
    public static void main(String[] args)
    {
        Thread t= Thread.currentThread();
        System.out.println("current thread.....>" + t);
        t.setName("prathyusha");
        
        
    }

    private static Thread currentThread() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void setName(String prathyusha) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
