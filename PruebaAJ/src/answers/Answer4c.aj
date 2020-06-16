package answers;

import figures.FigureElement;
import figures.Group;
import java.awt.Rectangle;

aspect Answer4c {
    private Rectangle Group.cache = null;

    Rectangle around(Group g):
            execution(Rectangle Group.getBounds()) 
            && this(g) {
        if (g.cache == null) {
            g.cache = proceed(g);
        }
        return g.cache;
    }

    before(Group g): 
            call(void move(int, int)) 
            && target(g) {
        g.cache = null;
    }
}