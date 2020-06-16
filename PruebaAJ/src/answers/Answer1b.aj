package answers;

aspect Answer1b {
    declare warning
        : set(private * *)
          && !withincode(* set*(..))
          && within(figures.*)
        : "bad field set";
}