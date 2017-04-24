import java.util.Random;


public class EstimateExpectationTime {
	private int numOfPersons ;
	private Queue queue ;
	private Person person ;
	
	public EstimateExpectationTime( int numOfPersons ){
		this.numOfPersons = numOfPersons ;
		queue = new Queue() ;
		
		for( int i = 1 ; i <= numOfPersons ; i++ ){
			person = new Person( getRandom() ) ;
			queue.push(person);
		}
	}
	
	private int getRandom(){
		Random rn = new Random() ;
		int z = ( rn.nextInt() % 1000 ) + 1000 ;
		return z ;
	}

	public int calculate(){
		int sum = 0 ;
		for( int i = 1 ; i <= numOfPersons ; i++ ){
			person = (Person) queue.pop() ;
			sum += person.getTime() ;
		}
		
		return sum ;
	}
}
