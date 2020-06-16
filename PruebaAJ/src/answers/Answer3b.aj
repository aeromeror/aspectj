package answers;

import support.Log;

import figures.Point;
import figures.Group;
import figures.FigureElement;

aspect Answer3b {
    before(Object o):
            execution(public * *(..))
            && !execution(public String toString(..)) 
            // or perhaps !cflow(adviceexecution())
            && within(figures.*) 
            && target(o) 
    {
        Log.write(thisJoinPoint + " at " + o);
    }
}