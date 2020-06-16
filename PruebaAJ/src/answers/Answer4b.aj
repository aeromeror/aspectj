package answers;

import figures.FigureElement;
import figures.Group;
import java.awt.Rectangle;

aspect Answer4b {
    private Rectangle Group.cache = null;

    Rectangle around(Group g):
            execution(Rectangle Group.getBounds()) 
            && this(g) {
        if (g.cache == null) {
            g.cache = proceed(g);
        }
        return g.cache;
    }
}