import java.util.ArrayList;

/**
 * A simple model of an auction.
 * The auction maintains a list of lots of arbitrary length.
 *
 * @author David J. Barnes and Michael Kölling.
 * @version 2011.07.31
 */
public class Auction
{
    // The list of Lots in this auction.
    private ArrayList<Lot> lots;
    // The number that will be given to the next lot entered
    // into this auction.
    private int nextLotNumber;

    /**
     * Create a new auction.
     */
    public Auction()
    {
        lots = new ArrayList<Lot>();
        nextLotNumber = 1;
    }

    /**
     * Enter a new lot into the auction.
     * @param description A description of the lot.
     */
    public void enterLot(String description)
    {
        lots.add(new Lot(nextLotNumber, description));
        nextLotNumber++;
    }

    /**
     * Show the full list of lots in this auction.
     */
    public void showLots()
    {
        for(Lot lot : lots) {
            System.out.println(lot.toString());
        }
    }
    
    /**
     * Make a bid for a lot.
     * A message is printed indicating whether the bid is
     * successful or not.
     * 
     * @param lotNumber The lot being bid for.
     * @param bidder The person bidding for the lot.
     * @param value  The value of the bid.
     */
    public void makeABid(int lotNumber, Person bidder, long value)
    {
        Lot selectedLot = getLot(lotNumber);
        if(selectedLot != null) {
            Bid bid = new Bid(bidder, value);
            boolean successful = selectedLot.bidFor(bid);
            if(successful) {
                System.out.println("The bid for lot number " +
                                   lotNumber + " was successful.");
            }
            else {
                // Report which bid is higher.
                Bid highestBid = selectedLot.getHighestBid();
                System.out.println("Lot number: " + lotNumber +
                                   " already has a bid of: " +
                                   highestBid.getValue());
            }
        }
    }

    /**
     * Return the lot with the given number. Return null
     * if a lot with this number does not exist.
     * @param lotNumber The number of the lot to return.
     */
    public Lot getLot(int lotNumber)
    {
        if((lotNumber >= 1) && (lotNumber < nextLotNumber)) {
            for( int i = 0 ; i < lots.size() ; i++ )
                if( lots.get(i).getNumber() == lotNumber )  
                    return lots.get(i) ;
            System.out.println( "Internal Error! " ) ;
            return null ;
        }
        else {
            System.out.println("Lot number: " + lotNumber +
                               " does not exist.");
            return null;
        }
    }
    
    private void printLots(){
        for( Lot lot : lots )
        {
           Bid temp = lot.getHighestBid() ;
            System.out.println( lot.getNumber() + lot.getDescription() ) ;
            if( temp == null )
                System.out.println( "No Bidder!" ) ;
            else
                System.out.println( "name of bidder : " + temp.getBidder().getName() + "Bid value : " + temp.getValue() ) ;            
        }
    }
    
    public ArrayList<Lot> getUnSold(){
        ArrayList<Lot> lotList = new ArrayList<Lot>() ;
        for( Lot lot : lots )
            if( lot.getHighestBid() == null )
                lotList.add(lot) ;
        
        return lotList ;
    }
    
    /**
     * Remove the lot with the given lot number.
     * @param number The number of the lot to be removed.
     * @return The Lot with the given number, or null if
     * there is no such lot.
     */
    public Lot removeLot(int number){
        for( int i = 0 ; i < lots.size() ; i++ )
            if( lots.get(i).getNumber() == number )
                return lots.remove(i) ;
        return null ;
    }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
}
