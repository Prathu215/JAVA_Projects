package chapter5;


public class DogTriathlonParticipant2 
{
    private final int NUM_EVENTS;
    private static int totalCumulativeScore = 0;
    private final String name;
    private final int obedienceScore;
    private final int conformationScore;
    private final int agilityScore;
    private final int total;
    private final double avg;
    private final boolean scoresAgree;
    public DogTriathlonParticipant2(String name, int numEvents, int score1, int score2, int score3)
    {
        this.name = name;
        NUM_EVENTS = numEvents;
        int totalNot0 = 0;
        if(score1 != 0)
            totalNot0 = totalNot0 + 1;
        if(score2 != 0)
            totalNot0 = totalNot0 + 1;
        if(score3 != 0)
            totalNot0 = totalNot0 + 1;
        
        if(numEvents == totalNot0)
            scoresAgree = true;
        else
            scoresAgree = false;
        if(scoresAgree)
        {
        obedienceScore = score1;
        conformationScore = score2;
        agilityScore = score3;
        }
        else
        {
        obedienceScore = 0;
        conformationScore = 0;
        agilityScore = 0;
        }
        total = obedienceScore + conformationScore + agilityScore;
        totalCumulativeScore = totalCumulativeScore + total;
        if(NUM_EVENTS == 0) 
            avg = 0;
        else
            avg = (double) total / NUM_EVENTS;
        
        
        
      }
    public void display()
    {
        if(!scoresAgree)
            System.out.println("\nNotice! Number of events for " + name + "does not agree with scores reported.");
        System.out.println(name + " participated in " + NUM_EVENTS + " events and has an average score of " + avg);
        System.out.println(" " + name + " has a total score of " + total + " bringing the total cumulative score to " + totalCumulativeScore);
        
    }
}
