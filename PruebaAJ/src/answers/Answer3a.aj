package answers;

import support.Log;

aspect Answer3a {
    before(): execution(public * *(..)) && within(figures.*) {
        Log.write(thisJoinPoint);
    }
}