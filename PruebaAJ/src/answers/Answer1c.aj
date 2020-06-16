package answers;

aspect Answer1c {
    declare error
        : set(private * *)
          && !(withincode(* set*(..)) || withincode(new(..)))
          && within(figures.*)
        : "bad field set";
}