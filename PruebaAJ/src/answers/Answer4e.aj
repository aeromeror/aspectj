
package answers;

import figures.FigureElement;
import figures.Group;
import figures.Point;
import java.awt.Rectangle;

aspect Answer4e {
    private Rectangle Group.cache = null;
    private Group FigureElement.enclosingGroup = null;

    before(FigureElement p, Group g): 
	    execution(void add(FigureElement)) 
	    && args(p) 
	    && target(g) {
        p.enclosingGroup = g;
    }

    Rectangle around(Group g):
            execution(Rectangle Group.getBounds()) 
	    && this(g) {
        if (g.cache == null) {
            g.cache = proceed(g);
        }
        return g.cache;
    }

    before(Point p): 
	    set(* Point.*) 
	    && target(p) {
        FigureElement fe = p;
        while (fe.enclosingGroup != null) {
            fe.enclosingGroup.cache = null;
            fe = fe.enclosingGroup;
        }
    }
}