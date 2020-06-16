package answers;

import figures.Group;
import figures.FigureElement;

public aspect Answer2b {
    before(FigureElement newValue):
            call(void Group.add(FigureElement))
            && args(newValue) {
        if (newValue == null) {
            throw new IllegalArgumentException("null not allowed");
        }
    }
}