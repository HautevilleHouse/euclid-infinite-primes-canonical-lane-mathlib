import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclidInfinitePrimesCanonicalLaneLean

structure Prime where
  value : ℕ
  isPrime : Prop

def euclidNumber (primes : List ℕ) : ℕ :=
  (primes.foldr (· * ·) 1) + 1

theorem euclid_number_not_divisible (primes : List ℕ) (h : ∀ p ∈ primes, Prime p) :
    ∀ p ∈ primes, ¬ (euclidNumber primes % p = 0) := by
  intro p hp
  have hprime := h p hp
  have hdiv : euclidNumber primes % p = 1 := by
    calc
      euclidNumber primes % p = ((primes.foldr (· * ·) 1) + 1) % p := rfl
      _ = ((primes.foldr (· * ·) 1) % p + 1 % p) % p := by simp
      _ = (0 + 1) % p := by
        have : (primes.foldr (· * ·) 1) % p = 0 := by
          apply Nat.mod_eq_zero_of_dvd
          apply Finset.dvd_prod_of_mem
          exact Finset.mem_list.mpr hp
        simp [this]
      _ = 1 % p := by simp
      _ = 1 := Nat.mod_eq_of_lt (by
        have : p > 1 := Nat.Prime.one_lt (by exact hprime.isPrime)
        omega)
    
  intro hzero
  have : 1 = 0 := by
    calc
      1 = euclidNumber primes % p := by symm; exact hdiv
      _ = 0 := hzero
    
  omega

end EuclidInfinitePrimesCanonicalLaneLean
end HautevilleHouse