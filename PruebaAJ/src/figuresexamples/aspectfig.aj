package figuresexamples;

public aspect aspectfig {
	 //pointcut callSetX()  : call(void  figures.Point.setX(int)) && within (ClassTest01) ;
	 pointcut callSetX()  : call(void  figures.Point.setX(int));
	    // Advice
	    before() : callSetX()  {
	    		
	        System.out.println("Before call Point.setX(int)");
	    }
}
