package answers;

import figures.*;

import java.awt.Rectangle;

aspect Answer2e {
    void around(Point p, int dx, int dy):
            target(p) && call(void move(int, int)) && args(dx, dy) {
        int preX = p.getX();
        int preY = p.getY();

        proceed(p, dx, dy);

        int postX = p.getX();
        int postY = p.getY();

        if ((postX != preX + dx) || (postY != preY + dy)) {
            throw new IllegalStateException("point didn't move properly");
        }
    }
}