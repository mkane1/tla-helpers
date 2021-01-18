------------------------------- MODULE lists -------------------------------
LOCAL INSTANCE Sequences
LOCAL INSTANCE Integers
LOCAL INSTANCE FiniteSets

(* Generate all possible orderings of all the elements in set.  
   Input: any set  
   Output: all sequences that can be formed by imposing all orderings over the elements of that set *)
AllOrderings(set) ==
    LET seqs == [1..Cardinality(set) -> set]
        orderings == {s \in seqs: \A i, j \in DOMAIN s: i /= j => s[i] /= s[j]}
    IN orderings

=============================================================================
