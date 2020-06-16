package answers;

import support.Log;

import figures.*;

aspect Answer3d {

    private boolean Point.inGroup = false;

    before(Point p): 
            execution(void Group.add(FigureElement)) 
            && args(p) {
        if (p.inGroup) {
            throw new IllegalStateException();
        } else {
            p.inGroup = true;
        }
    }
}