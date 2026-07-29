import EuclidInfinitePrimesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

def ConstrainedEuclidInfinitePrimesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  ConstrainedEuclidInfinitePrimesClosure A

def ConditionalRouteClosure (A : AdmissibleClass) : Prop :=
  ConstrainedEuclidInfinitePrimesClosure A ∧ ClassicalSourceBoundaryCarried

theorem constrained_euclid_infinite_primes_endgame (A : AdmissibleClass) :
    ConstrainedEuclidInfinitePrimesClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : AdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_euclid_infinite_primes_endgame A

theorem conditional_route_closure_checked (A : AdmissibleClass) :
    ConditionalRouteClosure A := by
  exact And.intro (constrained_euclid_infinite_primes_endgame A) classical_source_boundary_carried_checked

theorem conditional_route_source_boundary_carried (A : AdmissibleClass) :
    ConditionalRouteClosure A -> ClassicalSourceBoundaryCarried := by
  intro h
  exact h.2

end EuclidInfinitePrimesCanonicalLaneLean
end HautevilleHouse