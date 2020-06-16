package answers;

import figures.*;

import java.awt.Rectangle;

aspect Answer2f {
    void around(FigureElement fe, int dx, int dy):
            target(fe) && call(void move(int, int)) && args(dx, dy) {

        Rectangle preBounds = new Rectangle(fe.getBounds());
        proceed(fe, dx, dy);

        preBounds.translate(dx, dy);

        if (!preBounds.equals(fe.getBounds())) {
            throw new IllegalStateException("bounds don't match move");
        }
    }
}