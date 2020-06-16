
package answers;

import support.Log;

import figures.*;

aspect Answer3c {
    before():
            execution(void Group.add(FigureElement)) 
            && args(Point) {
        Log.write("adding Point");
    }
}