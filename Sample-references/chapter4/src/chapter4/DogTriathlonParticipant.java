
package chapter4;


public class DogTriathlonParticipant 
{
    private final int NUM_EVENTS;
    private static int totalCumulativeScore = 0;
    private final String name;
    private final int obedienceScore;
    private final int conformationScore;
    private final int agilityScore;
    private final int total;
    private final double avg;
    public DogTriathlonParticipant(String name, int numEvents, int score1, int score2, int score3)
    {
        this.name = name;
        NUM_EVENTS = numEvents;
        obedienceScore = score1;
        conformationScore = score2;
        agilityScore = score3;
        total = obedienceScore + conformationScore + agilityScore;
        avg = (double) total / NUM_EVENTS;
        totalCumulativeScore = totalCumulativeScore + total;
        
      }
    public void display()
    {
        System.out.println(name + " participated in " + NUM_EVENTS + " events and has an average score of " + avg);
        System.out.println(" " + name + " has a total score of " + total + " bringing the total cumulative score to " + totalCumulativeScore);
        
    }
}
