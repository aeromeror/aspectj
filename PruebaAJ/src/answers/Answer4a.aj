package answers;

import figures.FigureElement;
import figures.Group;
import java.awt.Rectangle;

aspect Answer4a {
    Rectangle around(): execution(Rectangle Group.getBounds()) {
        return FigureElement.MAX_BOUNDS;
    }
}