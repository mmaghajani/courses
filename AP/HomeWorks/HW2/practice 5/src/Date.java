
public class Date {
	private int month ;
	private int day ;
	private int year ;
	
	public Date( int day , int month , int year ){
		if( day <= 31 && day > 0 )
			this.day = day ;
		
		if( month <= 12 && month > 0 )
			this.month = month ;
		
		if( year > 0 )
			this.year = year ;
	}
	
	public int getDay(){
		return day ;
	}
	
	public int getMonth(){
		return month ;
	}
	
	public int getYear(){
		return year ;
	}
	
	public void setDay( int day ){
		if( day > 0 && day <= 31 )
			this.day = day ;
		else
			System.out.println( "Invalid data !" ) ;
	}
	
	public void setMonth( int month ){
		if( month > 0 && month <= 12 )
			this.month = month ;
		else
			System.out.println( "Invalid data!" ) ;
	}
	
	public void setYear( int year ){
		if( year > 0 )
			this.year = year ;
		else
			System.out.println( "Invalid data!" ) ;
	}
	
	public void displayeDate(){
		System.out.println( year + "/" + month + "/" + day ) ;
	}
}
