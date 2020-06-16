package answers;

import figures.*;

aspect Answer2d {
    void around(int val): (set(int Point._x) || set(int Point._y))
                          && args(val) {
        if (val < 0)
            val = 0;
        proceed(val);
    }
}