package answers;

import figures.*;

aspect Answer1a {
    declare error
        : get(java.io.PrintStream System.out)
          && within(figures..*)
        : "illegal access to System.out";
}
