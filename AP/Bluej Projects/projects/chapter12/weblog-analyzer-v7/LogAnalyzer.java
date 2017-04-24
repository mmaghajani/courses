import java.io.IOException;

/**
 * Read web server data and analyse
 * hourly access patterns.
 * 
 * @author David J. Barnes and Michael Kölling.
 * @version 2011.07.31
 */
public class LogAnalyzer
{
    // Where to calculate the hourly access counts.
    private int[] hourCounts;
    // Use a LogfileReader to access the data.
    private LogfileReader reader;
    // The name of the log file.
    private String logfile;

    /**
     * Create an object to analyze hourly web accesses.
     */
    public LogAnalyzer()
    { 
        // Create the array object to hold the hourly
        // access counts.
        hourCounts = new int[24];
        reader = null;
        logfile = null;
    }

    /**
     * Analyze the hourly access data from a log file.
     * @param filename The name of the log file.
     */
    public void analyzeHourlyData(String filename)
    {
        try {
            // Reset the analyzer for the new data.
            reset();
            logfile = filename;
            // Create the reader to obtain the data.
            reader = new LogfileReader(filename);            
            while(reader.hasNext()) {
                LogEntry entry = reader.next();
                int hour = entry.getHour();
                hourCounts[hour]++;
            }
        }
        catch(IOException e) {
            System.out.println("Unable to analyze " + filename);
            // Reset the analyzer to clear any partial state.
            reset();
        }
    }

    /**
     * Print the hourly counts.
     * These should have been set with a prior
     * call to analyzeHourlyData.
     */
    public void printHourlyCounts()
    {
        System.out.println("Hr: Count");
        for(int hour = 0; hour < hourCounts.length; hour++) {
            System.out.println(hour + ": " + hourCounts[hour]);
        }
    }
    
    /**
     * Print the lines of data read by the LogfileReader
     */
    public void printData()
    {
        if(reader != null) {
            System.out.println("Logfile: " + logfile);
            reader.printData();
        }
        else {
            System.out.println("There is currently no data to print.");
        }
    }
    
    /**
     * Reset the analyzer to the state of having no data.
     */
    private void reset()
    {
        for(int i = 0; i < hourCounts.length; i++) {
            hourCounts[i] = 0;
        }
        reader = null;
        logfile = null;
    }
}
