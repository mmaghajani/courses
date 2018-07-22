public class RootFinder {
	private Polynomials poly;
	private double LowerBound;
	private double UpperBound;
	private double precision;

	public RootFinder(double LowerBound, double UpperBound, double precision,
			int degree) {
		this.LowerBound = LowerBound;
		this.UpperBound = UpperBound;
		this.precision = precision;
		poly = new Polynomials(degree);
	}

	public void resetRootFinder(double LowerBound, double UpperBound,
			double precision, int degree) {
		this.LowerBound = LowerBound;
		this.UpperBound = UpperBound;
		this.precision = precision;
		poly = new Polynomials(degree);
	}

	public double find() {
		double a = LowerBound;
		double b = UpperBound;
		double e = precision;
		double m = (a+b)/2 ;
		
		while( Math.abs( poly.output(m) ) >= e ){
			if( poly.output(a) * poly.output(m) < 0 )
				b = m ;
			else
				a = m ;
			
			m = (a+b)/2 ;
		}
		
		return m ;
	}

}
