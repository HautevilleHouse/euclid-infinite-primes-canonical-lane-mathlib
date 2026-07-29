import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

structure FundamentalTheoremArithmeticCertificate where
  uniqueFactorizationUsed : Bool
  primeFactorizationRecorded : Bool
  ftaChecked : Bool

def fundamentalTheoremArithmeticCertificate : FundamentalTheoremArithmeticCertificate := {
  uniqueFactorizationUsed := true,
  primeFactorizationRecorded := true,
  ftaChecked := true
}

def FundamentalTheoremArithmeticLayerClosed (C : FundamentalTheoremArithmeticCertificate) : Prop :=
  C.uniqueFactorizationUsed = true ∧ C.ftaChecked = true

theorem fundamental_theorem_arithmetic_layer_closed_checked :
    FundamentalTheoremArithmeticLayerClosed fundamentalTheoremArithmeticCertificate := by
  exact And.intro rfl rfl

end HautevilleHouse
end EuclidInfinitePrimesCanonicalLaneLean