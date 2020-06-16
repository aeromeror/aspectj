package answers;

import figures.Point;
import figures.FigureElement;

public aspect Answer2a {
    before(int newValue): set(int Point.*) && args(newValue) {
        if (newValue < 0) {
            throw new IllegalArgumentException("too small");
        }
    }
}