Set Implicit Arguments.
Require Import List.
Import ListNotations.
Require Import Lia.

Goal forall X Y, ~(X /\ Y) \/ (~X /\ Y) \/ (~X /\ ~Y) <-> ~(X /\ Y).
Proof.
intros. split.
-intros [H|G].
  --exact H.
  --intros a. destruct a as [x y]. destruct G.
    ---apply H. exact x.
    ---apply H. exact y.
-intros H. left. exact H.
Qed.

Goal forall X Y Z, ~(~X /\ Y /\ ~Z) /\ ~(X /\ Y /\ Z) /\ (X /\ ~Y /\ ~Z) <-> (X /\ ~(Y \/ Z)).
Proof.
intros. split.
-intros [H [a [x [ny nz]]]]. split.
  --exact x.
  --intros [y |z].
    ---apply ny. exact y.
    ---apply nz. exact z.
-intros [x H]. split.
  --intros [nx [y nz]]. apply nx. exact x.
  --split.
      ---intros [_ [y z]]. apply H. left. exact y.
      ---split. 
           *exact x.
           *split.
              **intros y. destruct H. left. exact y.
              **intros z. destruct H. right. exact z.
Qed.
   
