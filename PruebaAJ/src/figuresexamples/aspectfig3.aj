package figuresexamples;

public aspect aspectfig3 {
	// pointcut: Include move actions
	   pointcut moveAction() :  (
	           call(void FigureElement.move(int,int)) ||
	           call(void Point.setX(int))              ||
	           call(void Point.setY(int))                    
	           )
	           && within (ClassTest03);
	 
	   before() : moveAction()  {
	       System.out.println("before move");
	   }
}
