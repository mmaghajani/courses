import java.util.ArrayList;


public class Queue {

	private ArrayList<Object> queue ;
	
	public Queue(){
		queue = new ArrayList<Object>() ;
	}
	
	public void push( Object object ){
		queue.add(object) ;
	}
	
	public Object pop(){
		Object object = queue.get(0) ;
		queue.remove(0) ;
		
		return object ;
	}
}
