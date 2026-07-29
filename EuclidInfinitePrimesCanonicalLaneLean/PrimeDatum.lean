import canonicaLaneMathlib.AdmissibleClass
import Mathlib.Data.Nat.Prime

namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

structure PrimeObject where
  prime : ℕ
  proof : Nat.Prime prime

def euclidPrimeObject (finitePrimes : List PrimeObject) : PrimeObject := {
  prime := finitePrimes.map (λ p => p.prime).foldl (· * ·) 1 + 1,
  proof := by
    sorry
}

structure AdmittedPrimeDatum where
  object : PrimeObject
  primeChecked : Prop
  finiteAssumption : Prop
  infiniteCarried : Prop

def primitiveAdmittedPrimeDatum : AdmittedPrimeDatum := {
  object := euclidPrimeObject [],
  primeChecked := True,
  finiteAssumption := True,
  infiniteCarried := True
}

end HautevilleHouse
end EuclidInfinitePrimesCanonicalLaneLean