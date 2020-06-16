package answers;

import figures.Group;
import figures.FigureElement;

public aspect Answer2c {
    before(FigureElement newValue, Group g):
            call(void Group.add(FigureElement))
            && args(newValue)
            && target(g) {
        if (newValue == null) {
            throw new IllegalArgumentException("null not allowed");
        }
        if (newValue == g) {
            throw new IllegalArgumentException("self not allowed");
        }

    }
}