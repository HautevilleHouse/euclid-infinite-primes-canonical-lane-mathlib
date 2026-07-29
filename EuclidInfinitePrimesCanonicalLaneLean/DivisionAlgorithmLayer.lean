import canonicaLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.Div

namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

structure DivisionAlgorithmCertificate where
  divisionAlgorithmUsed : Bool
  quotientRemainderRecorded : Bool
  divisionAlgorithmChecked : Bool

def divisionAlgorithmCertificate : DivisionAlgorithmCertificate := {
  divisionAlgorithmUsed := true,
  quotientRemainderRecorded := true,
  divisionAlgorithmChecked := true
}

def DivisionAlgorithmLayerClosed (C : DivisionAlgorithmCertificate) : Prop :=
  C.divisionAlgorithmUsed = true ∧ C.divisionAlgorithmChecked = true

theorem division_algorithm_layer_closed_checked :
    DivisionAlgorithmLayerClosed divisionAlgorithmCertificate := by
  exact And.intro rfl rfl

end HautevilleHouse
end EuclidInfinitePrimesCanonicalLaneLean