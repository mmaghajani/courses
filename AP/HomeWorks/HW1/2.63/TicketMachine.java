
/**
 * Write a description of class TicketMachine here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class TicketMachine
{
    private Tickets tickets ;
    private int balance ;
    private int total ;
    
    
    public TicketMachine( int price1 , int price2 , int price3 )
    {
        tickets = new Tickets( price1 , price2 , price3 ) ;
        balance = 0 ;
        total = 0 ;
    }
    
    public Tickets getPrice()
    {
        return tickets ;
    }
    
    public void insertMoney( int amount )
    {
        if( amount > 0 )        balance += amount ;
        else                    System.out.println("Use a positive amount: " + amount ) ;
    }
    
    public void printTicket1()
    {
        if( balance >= tickets.ticket1 )
        {
            // Simulate the printing of a ticket.
            System.out.println("##################");
            System.out.println("# The BlueJ Line");
            System.out.println("# Ticket");
            System.out.println("# " + tickets.ticket1 + " cents.");
            System.out.println("##################");
            System.out.println();
            // Update the total collected with the balance.
            total = total + tickets.ticket1;
            // Clear the balance
            balance -= tickets.ticket1 ;
        }
        else
            System.out.println( "Not enough money!" ) ;
    }
    
    public void printTicket2()
    {
        if( balance >= tickets.ticket2 )
        {
            // Simulate the printing of a ticket.
            System.out.println("##################");
            System.out.println("# The BlueJ Line");
            System.out.println("# Ticket");
            System.out.println("# " + tickets.ticket2 + " cents.");
            System.out.println("##################");
            System.out.println();
            // Update the total collected with the balance.
            total = total + tickets.ticket2;
            // Clear the balance
            balance -= tickets.ticket2 ;
        }
        else
            System.out.println( "Not enough money!" ) ;
    }
    
    public void printTicket3()
    {
        if( balance >= tickets.ticket3 )
        {
            // Simulate the printing of a ticket.
            System.out.println("##################");
            System.out.println("# The BlueJ Line");
            System.out.println("# Ticket");
            System.out.println("# " + tickets.ticket3 + " cents.");
            System.out.println("##################");
            System.out.println();
            // Update the total collected with the balance.
            total = total + tickets.ticket3;
            // Clear the balance
            balance -= tickets.ticket3 ;
        }
        else
            System.out.println( "Not enough money!" ) ;
    }
    
    public int refundBalance()
    {
        int amountToRefund;
        amountToRefund = balance;
        balance = 0;
        return amountToRefund;
    }
    
    public int emptyMachine()
    {
        int temp = total ;
        total = 0 ;
        return temp ;
    }
}
