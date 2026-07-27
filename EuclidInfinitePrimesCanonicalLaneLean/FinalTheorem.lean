import EuclidInfinitePrimesCanonicalLaneLean.GateLemmas


namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

/-!
Euclid's theorem: infinitely many primes

Constrained admissible-class closure of the theorem.
Full formalization of the proof is future work.
-/
def constrained_theorem_closure : Prop :=
  ∀ (S : Finset ℕ) [∀ p ∈ S, Nat.Prime p], ∃ (q : ℕ), q ∉ S ∧ Nat.Prime q

theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  sorry

end EuclidInfinitePrimesCanonicalLaneLean
end HautevilleHouse
