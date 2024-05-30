Class Test := test : unit.

Hint Extern 0 (Test) => refine (tt) : typeclass_instances.

Theorem test₁ :
  Test.
Proof.
  typeclasses eauto.
Defined.

Remove Hints Test : typeclass_instances.

Theorem test2 :
  Test.
Proof.
  Fail typeclasses eauto.
Abort.
