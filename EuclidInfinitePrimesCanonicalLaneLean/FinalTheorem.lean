import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EuclidInfinitePrimesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EuclidInfinitePrimesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

def ConstrainedEuclidClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_euclid_endgame (A : AdmissibleClass) :
    ConstrainedEuclidClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EuclidInfinitePrimesCanonicalLaneLean
end HautevilleHouse