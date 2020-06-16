package answers;

import support.Log;

import figures.*;

aspect Answer3e {

    private Group Point.containingGroup = null;

    before(Group g, Point p): 
            execution(void Group.add(FigureElement)) 
            && this(g) 
            && args(p) {
        if (p.containingGroup != null) {
            throw new IllegalStateException(p.containingGroup.toString());
        } else {
            p.containingGroup = g;
        }
    }
}